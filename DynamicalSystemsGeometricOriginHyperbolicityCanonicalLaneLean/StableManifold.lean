import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean.HyperbolicSet

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure StableManifold {M : Type u} {sys : DynamicalSystem M} (H : HyperbolicSet sys) where
  basePoint : M
  stableManifold : Set M
  tangentSpace : Submodule ℝ (TangentSpace M sys.manifold basePoint)
  injectiveImmersion : basePoint ∈ stableManifold
  invariance : ∀ x ∈ stableManifold, ∀ t ≥ 0, sys.flow x t ∈ stableManifold
  exponentialContraction : Prop
  smoothSubmanifold : Prop
  exponentialContractionTerm : exponentialContraction
  smoothSubmanifoldTerm : smoothSubmanifold

end DynamicalsSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse