import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure GeometricLorenzAttractorPackage (M : Type u) [TopologicalSpace M] (X : VectorField M) where
  attractorSet : Set M
  singularPoint : M
  hyperbolicSaddle : Prop
  homoclinicConnection : Prop
  robustChaos : Prop

structure GeometricLorenzAttractorEvidence {M : Type u} [TopologicalSpace M] {X : VectorField M} (L : GeometricLorenzAttractorPackage M X) where
  attractorSetClosed : L.attractorSet = {x | ∃ t : ℝ, Flow X t x ∈ L.attractorSet}
  singularPointClosed : L.singularPoint ∈ L.attractorSet
  hyperbolicSaddleClosed : L.hyperbolicSaddle
  homoclinicConnectionClosed : L.homoclinicConnection
  robustChaosClosed : L.robustChaos

def GeometricLorenzAttractorClosed {M : Type u} [TopologicalSpace M] {X : VectorField M} (L : GeometricLorenzAttractorPackage M X) : Prop :=
  (L.attractorSet = {x | ∃ t : ℝ, Flow X t x ∈ L.attractorSet}) ∧ (L.singularPoint ∈ L.attractorSet) ∧ L.hyperbolicSaddle ∧ L.homoclinicConnection ∧ L.robustChaos

theorem geometric_lorenz_attractor_closed_from_evidence {M : Type u} [TopologicalSpace M] {X : VectorField M} (L : GeometricLorenzAttractorPackage M X) (E : GeometricLorenzAttractorEvidence L) : GeometricLorenzAttractorClosed L := by
  exact And.intro E.attractorSetClosed (And.intro E.singularPointClosed (And.intro E.hyperbolicSaddleClosed (And.intro E.homoclinicConnectionClosed E.robustChaosClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse
