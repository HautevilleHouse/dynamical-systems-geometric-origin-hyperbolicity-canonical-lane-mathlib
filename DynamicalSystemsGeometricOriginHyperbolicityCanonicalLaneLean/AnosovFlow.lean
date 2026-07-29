import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure AnosovFlow {M : Type u} (sys : DynamicalSystem M) where
  tangentBundle : Type v
  stableDistribution : tangentBundle → Submodule ℝ tangentBundle
  unstableDistribution : tangentBundle → Submodule ℝ tangentBundle
  centralDistribution : tangentBundle → Submodule ℝ tangentBundle
  invariantSplitting : Prop
  uniformContraction : Prop
  uniformExpansion : Prop
  invariantSplittingTerm : invariantSplitting
  uniformContractionTerm : uniformContraction
  uniformExpansionTerm : uniformExpansion

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse