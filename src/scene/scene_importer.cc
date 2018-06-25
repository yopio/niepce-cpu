/*!
 * @file scene_importer.cc
 * @brief 
 * @author Masashi Yoshida
 * @date 
 * @details 
 */
#include "scene_importer.h"
#include "../core/vector3f.h"
#include "../core/film.h"
#include "../core/transform.h"
#include "../camera/camera.h"
#include "../texture/image_texture.h"
#include "../texture/value_texture.h"
#include "../material/material.h"
#include "../shape/triangle.h"
#include "../primitive/primitive.h"
#include "../light/light.h"
/*
// ---------------------------------------------------------------------------
*/
#define TINYOBJLOADER_IMPLEMENTATION
// #define TINYOBJLOADER_USE_DOUBLE
#include "../ext/tinyobjloader/tiny_obj_loader.h"
/*
// ---------------------------------------------------------------------------
*/
/*
// ---------------------------------------------------------------------------
*/
namespace niepce
{
/*
// ---------------------------------------------------------------------------
*/
SceneImporter::SceneImporter (const char* filename)
{
  Import (filename);
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::Import (const char *filename) -> void
{
  GetFileDirectory (filename, &base_filepath_);
  xml_.LoadFile (filename);
  root_ = xml_.RootElement ();

  // Loop for each element.
  for (auto element = root_->FirstChildElement ();
       element != nullptr;
       element = element->NextSiblingElement ())
  {
    Attributes attributes;
    if (IsElementType (element, "camera"))
    {
      auto type = element->Attribute ("type");
      attributes.AddString ("type", type);
      ParseRecursive (element, &attributes);
      camera_ = CreateCamera (attributes);
      continue;
    }
    if (IsElementType (element, "light"))
    {
      // Parse child
      ParseRecursive (element, &attributes);
      // Get light type.
      auto type = element->Attribute ("type");
      attributes.AddString ("type", type);
      // Get light id.
      auto id = element->Attribute ("id");
      // Compute filepath.
      // Store light.
      lights_.emplace (id, CreateLight (attributes));
      continue;
    }
    if (IsElementType (element, "texture"))
    {
      // Parse children.
      ParseRecursive (element, &attributes);
      // Get texture id.
      auto id   = element->Attribute ("id");
      // Create texture
      auto texture = CreateImageTexture (attributes.FindString ("filename"));
      textures_.emplace (id, std::move (texture));
      continue;
    }
    if (IsElementType (element, "material"))
    {
      auto attrib = ParseMaterial (element);
      auto id  = element->Attribute ("id");
      auto mat = CreateMaterial (attrib);
      materials_.emplace (id, mat);
      continue;
    }
    if (IsElementType (element, "shape"))
    {
      ParseRecursive (element, &attributes);
      // Only .obj type is support.
      LoadObj (attributes);
      continue;
    }
  }
  // Construct a scene.
  scene_.reset (CreateScene (primitives_, lights_.at ("infinite")));
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ExtractScene () const noexcept -> std::shared_ptr <Scene>
{
  if (scene_) { return scene_; }
  return nullptr;
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ExtractCamera () const noexcept -> std::shared_ptr <Camera>
{
  if (camera_) { return camera_; }
  return nullptr;
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseRecursive
(
 tinyxml2::XMLElement* element,
 Attributes*           attributes
 )
  const -> void
{
  for (auto elem = element->FirstChildElement ();
       elem != nullptr;
       elem = elem->NextSiblingElement ())
  {
    if (IsElementType (elem, "lookat") ||
        IsElementType (elem, "film"))
    {
      ParseRecursive (elem, attributes);
      continue;
    }
    if (elem->NoChildren ())
    {
      ParseElement (elem, attributes);
      continue;
    }
  }
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseMaterial (tinyxml2::XMLElement* material)
  const -> MaterialAttributes
{
  MaterialAttributes res;

  // Get material type.
  res.SetMaterialType (MaterialType (material));

  // Parse each element.
  for (auto element = material->FirstChildElement ();
       element != nullptr;
       element = element->NextSiblingElement ())
  {
    if (!element->NoChildren ())
    {
      std::cerr << "Ignored element " << element->Name ()
                << " since this element has child element."
                << std::endl;
      continue;
    }

    // Create value texture.
    if (IsElementType (element, "rgb"))
    {
      auto attrib = ParseSpectrum (element);
      auto type   = TextureType (attrib.first);
      auto tex    = CreateValueTexture (attrib.second);
      res.AddTexture (type, tex);
      continue;
    }
    // Reference to texture.
    if (IsElementType (element, "reference"))
    {
      auto attrib  = ParseString (element);
      try
      {
        auto type = TextureType (attrib.first);
        auto tex = textures_.at (attrib.second);
        res.AddTexture (type, tex);
      }
      catch (const std::exception& e)
      {
        std::cerr << "Reference texture could not found." << std::endl;
      }
      continue;
    }
    std::cerr << "Ignored element : " << element->Name () << std::endl;
  }
  return res;
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseElement
(
 tinyxml2::XMLElement* element,
 Attributes*           attributes
)
  const noexcept -> void
{
  if (IsElementType (element, "bool"))
  {
    auto attrib = ParseBool (element);
    attributes->AddBool (attrib.first, attrib.second);
    return ;
  }
  if (IsElementType (element, "int"))
  {
    auto attrib = ParseInt (element);
    attributes->AddInt (attrib.first, attrib.second);
    return ;
  }
  if (IsElementType (element, "float"))
  {
    auto attrib = ParseFloat (element);
    attributes->AddFloat (attrib.first, attrib.second);
    return ;
  }
  if (IsElementType (element, "string"))
  {
    auto attrib = ParseString (element);
    attributes->AddString (attrib.first, attrib.second);
    return ;
  }
  if (IsElementType (element, "vector3"))
  {
    auto attrib = ParseVector3f (element);
    attributes->AddVector3f (attrib.first, attrib.second);
    return ;
  }
  if (IsElementType (element, "rgb"))
  {
    auto attrib = ParseVector3f (element);
    attributes->AddSpectrum (attrib.first, attrib.second);
    return ;
  }
  if (IsElementType (element, "point3"))
  {
    auto attrib = ParsePoint3f (element);
    attributes->AddPoint3f (attrib.first, attrib.second);
    return ;
  }
  if (IsElementType (element, "reference"))
  {
    auto attrib = ParseString (element);
    attributes->AddString (attrib.first, attrib.second);
    return ;
  }
  std::cout << "Ignored element : " << element->Name () << std::endl;
  return ;
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseBool (tinyxml2::XMLElement* element)
  const noexcept -> std::pair <std::string, bool>
{
  const std::string name = element->Attribute ("name");
  const bool value = element->BoolAttribute ("value");
  return std::make_pair (name, value);
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseInt (tinyxml2::XMLElement* element)
  const noexcept -> std::pair <std::string, int>
{
  const std::string name = element->Attribute ("name");
  const int value = element->IntAttribute ("value");
  return std::make_pair (name, value);
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseFloat (tinyxml2::XMLElement* element)
  const noexcept -> std::pair <std::string, Float>
{
  const std::string name = element->Attribute ("name");
  Float value = element->DoubleAttribute ("value");
  if (std::strcmp (element->Attribute ("unit"), "mm") == 0)
  {
    value *= 0.001;
  }
  return std::make_pair (name, value);
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseString (tinyxml2::XMLElement* element)
  const noexcept -> std::pair <std::string, std::string>
{
  const std::string name  = element->Attribute ("name");
  const std::string type  = element->Parent ()->ToElement ()->Name ();

  std::string value = element->Attribute ("value");
  if (name == "filename")
  {
    value = base_filepath_ + value;
  }

  return std::make_pair (name, value);
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseVector3f (tinyxml2::XMLElement* element)
  const noexcept -> std::pair <std::string, Vector3f>
{
  const std::string name = element->Attribute ("name");
  std::stringstream ss (element->Attribute ("value"));
  std::vector <Float> v (std::istream_iterator <Float> {ss},
                         std::istream_iterator <Float> ());
  return std::make_pair (name, Vector3f (v[0], v[1], v[2]));
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParsePoint3f (tinyxml2::XMLElement* element)
  const noexcept -> std::pair <std::string, Point3f>
{
  const std::string name = element->Attribute ("name");
  std::stringstream ss (element->Attribute ("value"));
  std::vector <Float> v (std::istream_iterator <Float> {ss},
                         std::istream_iterator <Float> ());
  return std::make_pair (name, Point3f (v[0], v[1], v[2]));
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::ParseSpectrum (tinyxml2::XMLElement* element)
  const noexcept -> std::pair <std::string, Spectrum>
{
  const std::string name = element->Attribute ("name");
  std::stringstream ss (element->Attribute ("value"));
  std::vector <Float> v (std::istream_iterator <Float> {ss},
                         std::istream_iterator <Float> ());
  return std::make_pair (name, Spectrum (v[0], v[1], v[2]));
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::IsElementType
(
 tinyxml2::XMLElement* element,
 const char* type
)
  const noexcept -> bool
{
  if (std::strcmp (element->Name (), type) == 0) { return true; }
  return false;
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::MaterialType (tinyxml2::XMLElement* element)
  const noexcept -> niepce::MaterialType
{
  const std::string type = element->Attribute ("type");
  if (type == "matte") { return MaterialType::kMatte; }
  return MaterialType::kUnknown;
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::LoadObj (const Attributes& attributes) -> void
{
  const std::string filename = attributes.FindString ("filename");

  tinyobj::attrib_t attrib;
  std::vector<tinyobj::shape_t> shapes;
  std::vector<tinyobj::material_t> materials;

  // Load .obj
  std::string err;
  bool ret = tinyobj::LoadObj (&attrib,
                               &shapes,
                               &materials,
                               &err,
                               filename.c_str());
  // Error check.
  if (!err.empty() || !ret) { std::cerr << err << std::endl; return ; }

  // Construct mesh.
  const std::shared_ptr <TriangleMesh> mesh (CreateMesh (attrib.vertices,
                                                         attrib.normals,
                                                         attrib.texcoords));

  std::vector <std::array <int, 3>> p_idxs;
  std::vector <std::array <int, 3>> n_idxs;
  std::vector <std::array <int, 3>> t_idxs;

  // Loop over shapes.
  for (const auto& s : shapes)
  {
    size_t index_offset = 0;
    for (size_t f = 0; f < s.mesh.num_face_vertices.size(); f++)
    {
      int fv = s.mesh.num_face_vertices[f];
      if (fv != 3) {/* Triangle is only supported.*/ return ; }

      // Get triangle position indices.
      std::array <int, 3> p = {s.mesh.indices[index_offset + 0].vertex_index,
                               s.mesh.indices[index_offset + 1].vertex_index,
                               s.mesh.indices[index_offset + 2].vertex_index};
      // Get triangle normal indices.
      std::array <int, 3> n = {s.mesh.indices[index_offset + 0].normal_index,
                               s.mesh.indices[index_offset + 1].normal_index,
                               s.mesh.indices[index_offset + 2].normal_index};
      // Get texture coordinate indices.
      std::array <int, 3> t = {s.mesh.indices[index_offset + 0].texcoord_index,
                               s.mesh.indices[index_offset + 1].texcoord_index,
                               s.mesh.indices[index_offset + 2].texcoord_index};
      // Push indices.
      p_idxs.push_back (p);
      n_idxs.push_back (n);
      t_idxs.push_back (t);
      index_offset += fv;
    }
  }

  // Construct triangle face.
  const int  size = p_idxs.size ();
  const auto id   = attributes.FindString ("material");
  const auto mat  = materials_.at (id);
  for (int i = 0; i < size; ++i)
  {
    std::shared_ptr <Shape> shape (CreateTriangle (mesh,
                                                   p_idxs[i],
                                                   n_idxs[i],
                                                   t_idxs[i]));

    primitives_.push_back (CreatePrimitive (shape, mat));
  }
}
/*
// ---------------------------------------------------------------------------
*/
auto SceneImporter::TextureType (const std::string& type)
  const noexcept -> niepce::TextureType
{
  if (type == "emission")    { return TextureType::kEmission; }
  if (type == "reflectance") { return TextureType::kReflectance; }
  return TextureType::kUnknown;
}
/*
// ---------------------------------------------------------------------------
*/
}  // namespace niepce
/*
// ---------------------------------------------------------------------------
*/
