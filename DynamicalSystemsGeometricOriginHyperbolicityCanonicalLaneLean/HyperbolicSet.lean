import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure HyperbolicSet {M : Type u} (sys : DynamicalSystem M) where
  invariantSet : Set M
  tangentBundle : Type v
  stableDistribution : tangentBundle → Set (Submodule ℝ tangentBundle)
  unstableDistribution : tangentBundle → Set (Submodule ℝ tangentBundle)
  contractionRate : ℝ
  expansionRate : ℝ
  dominatedSplitting : Prop
  uniformHyperbolicity : Prop
  invariantSetClosed : sys.flow invariantSet invariantSet
  dominatedSplittingTerm : dominatedSplitting
  uniformHyperbolicityTerm : uniformHyperbolicity

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse