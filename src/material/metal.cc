/*!
 * @file metal.cc
 * @brief 
 * @author Masashi Yoshida
 * @date 
 * @details 
 */
#include "metal.h"
#include "../core/intersection.h"
#include "../core/attributes.h"
#include "../core/material_attributes.h"
#include "../bsdf/beckmann_distribution.h"
#include "../bsdf/trowbridge_reitz.h"
#include "../bsdf/fresnel.h"
#include "../bsdf/microfacet_reflection.h"
#include "../core/memory.h"
#include "../core/intersection.h"
#include "../core/utilities.h"
#include "../bsdf/microfacet_reflection_pbrt.h"
/*
// ---------------------------------------------------------------------------
*/
namespace niepce
{
/*
// ---------------------------------------------------------------------------
*/
Metal::Metal
(
 const std::shared_ptr <Texture <Spectrum>>& absorption,
 const std::shared_ptr <Texture <Float>>& roughness_u,
 const std::shared_ptr <Texture <Float>>& roughness_v,
 const std::shared_ptr <Texture <Float>>& ior
) :
  Material (nullptr),
  absorption_  (absorption),
  roughness_u_ (roughness_u),
  roughness_v_ (roughness_v),
  ior_ (ior)
{}
/*
// ---------------------------------------------------------------------------
*/
auto Metal::AllocateBsdfs
(
 const Intersection& isect,
       MemoryArena*  memory
)
const -> Bsdf* const
{
  const auto& uv = isect.Texcoord ();

  const auto distribution
    = memory->Allocate <TrowbridgeReitz> (roughness_u_->Evaluate (isect),
                                          roughness_v_->Evaluate (isect),
                                          false);
  const auto fresnel
    = memory->Allocate <FresnelConductor> (Spectrum (1.0),
                                           Spectrum (1.5),
                                           absorption_->Evaluate (isect));

  Bsdf* const bsdf = memory->Allocate <MicrofacetReflection> (isect,
                                                              Spectrum (1.0),
                                                              distribution,
                                                              fresnel);

  return bsdf;
}
/*
// ---------------------------------------------------------------------------
*/
auto CreateMetalMaterial (const MaterialAttributes& attrs)
  -> std::shared_ptr <Material>
{
  const auto absorption
    = attrs.FindSpectrumTextureOrNullPtr (MaterialAttributes::Type::kAbsorption);
  const auto roughness_u
    = attrs.FindFloatTextureOrNullPtr (MaterialAttributes::Type::kRoughnessU);
  const auto roughness_v
    = attrs.FindFloatTextureOrNullPtr (MaterialAttributes::Type::kRoughnessV);
  const auto ior
    = attrs.FindFloatTextureOrNullPtr (MaterialAttributes::Type::kIndexOfRefraction);

  Intersection isect;
  isect.SetTexcoord (Point2f (0, 0));

  return std::make_shared <Metal> (absorption,
                                   roughness_u,
                                   roughness_v,
                                   ior);
}
/*
// ---------------------------------------------------------------------------
*/
} // namespace niepce
