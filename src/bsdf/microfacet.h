/*!
 * @file microfacet.h
 * @brief 
 * @author Masashi Yoshdia
 * @date 
 * @details 
 */
#ifndef _MICROFACET_H_
#define _MICROFACET_H_
/*
// ---------------------------------------------------------------------------
*/
#include "bsdf.h"
#include "fresnel.h"
#include "../core/niepce.h"
#include "../core/vector3f.h"
/*
// ---------------------------------------------------------------------------
*/
namespace niepce
{
/*
// ---------------------------------------------------------------------------
*/
/*
// ---------------------------------------------------------------------------
*/
MicrofacetReflection::MicrofacetReflection
(
 const Intersection& intersection,
 const Spectrum& reflectance,
 Float roughness,
 Float outgoing_ior,
 Float incident_ior
) :
  Bsdf (intersection),
  reflectance_ (reflectance),
  microfacet_  (BeckmannDistribution (roughness, roughness, false)),
  fresnel_     (FresnelDielectric (outgoing_ior, incident_ior))
{}
/*
// ---------------------------------------------------------------------------
*/
auto MicrofacetReflection::Pdf (const BsdfRecord &record)
  const noexcept -> Float
{
}
/*
// ---------------------------------------------------------------------------
*/
auto MicrofacetReflection::Evaluate (const BsdfRecord &record)
  const noexcept -> Spectrum
{
  const Vector3f& outgoing = record.Outgoing ();
  const Vector3f& incident = record.Incident ();
  const Vector3f wh = (outgoing + incident).Normalize ();

  const Float outgoing_cos_theta = bsdf::AbsCosTheta (outgoing);
  const Float incident_cos_theta = bsdf::AbsCosTheta (incident);

  // Handle case
  if (outgoing_cos_theta == 0 || incident_cos_theta == 0)
  {
    return Spectrum (0);
  }
  if (wh.X () == 0 && wh.Y () == 0 && wh.Z () == 0)
  {
    return Spectrum (0);
  }

  const Float fresnel    = fresnel_.Evaluate (Dot (wh, incident));
  const Float distribute = microfacet_.Distribution (wh);
  const Float gaf        = microfacet_.GeometryAttenuation (outgoing, wh);

  return (reflectance_ * distribute * fresnel)
         / (4.0 * bsdf::AbsCosTheta (outgoing) * bsdf::AbsSinTheta (incident));
}
/*
// ---------------------------------------------------------------------------
*/
auto MicrofacetReflection::Sample
(
 BsdfRecord*    record,
 const Point2f& sample
)
  const noexcept -> Spectrum
{
  const Vector3f outgoing = record->Outgoing ();
  if (outgoing.Z () == 0) { return Spectrum (0); }

  // Sample the microfacet normal and reflected direction (incident direction).
  const Vector3f microfacet_normal
    = microfacet_.SampleMicrofacetNormal (outgoing, sample);
  const Vector3f incident = bsdf::Reflect (outgoing, microfacet_normal);

  record->SetIncident (incident);

  // Error handle
  if (!bsdf::HasSameHemisphere (outgoing, incident)) { return Spectrum (0); }

  // Compute the pdf
  const Float pdf = microfacet_.Pdf (outgoing, microfacet_normal);

  // Evaluate the BSDF
  const Spectrum bsdf = Evaluate (*record);
  return bsdf;
}
/*
// ---------------------------------------------------------------------------
*/
} // namespace niepce
/*
// ---------------------------------------------------------------------------
*/
#endif // _MICROFACET_H_
