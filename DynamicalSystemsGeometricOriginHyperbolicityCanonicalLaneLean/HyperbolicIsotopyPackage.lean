import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure HyperbolicIsotopyPackage {M : Type u} [TopologicalSpace M] (G : DiffeomorphismGroup M) where
  stableManifold : Set M
  unstableManifold : Set M
  uniformExpansion : Prop
  uniformContraction : Prop
  persistencePerturbation : Prop

structure HyperbolicIsotopyEvidence {M : Type u} [TopologicalSpace M] {G : DiffeomorphismGroup M} (H : HyperbolicIsotopyPackage G) where
  stableManifoldClosed : H.stableManifold = Set.univ
  unstableManifoldClosed : H.unstableManifold = Set.univ
  uniformExpansionClosed : H.uniformExpansion
  uniformContractionClosed : H.uniformContraction
  persistencePerturbationClosed : H.persistencePerturbation

def HyperbolicIsotopyClosed {M : Type u} [TopologicalSpace M] {G : DiffeomorphismGroup M} (H : HyperbolicIsotopyPackage G) : Prop :=
  (H.stableManifold = Set.univ) ∧ (H.unstableManifold = Set.univ) ∧ H.uniformExpansion ∧ H.uniformContraction ∧ H.persistencePerturbation

theorem hyperbolic_isotopy_closed_from_evidence {M : Type u} [TopologicalSpace M] {G : DiffeomorphismGroup M} (H : HyperbolicIsotopyPackage G) (E : HyperbolicIsotopyEvidence H) : HyperbolicIsotopyClosed H := by
  exact And.intro E.stableManifoldClosed (And.intro E.unstableManifoldClosed (And.intro E.uniformExpansionClosed (And.intro E.uniformContractionClosed E.persistencePerturbationClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse
