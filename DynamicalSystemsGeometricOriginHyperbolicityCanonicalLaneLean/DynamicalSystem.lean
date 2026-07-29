import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure DynamicalSystem (M : Type u) where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  flow : manifold → ℝ → manifold
  flowSmooth : Prop
  flowGroupProperty : ∀ (x : manifold) (t s : ℝ), flow (flow x t) s = flow x (t + s)
  flowIdentity : ∀ (x : manifold), flow x 0 = x

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse