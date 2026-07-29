import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure ShadowingPropertyPackage (M : Type u) [MetricSpace M] (f : M → M) where
  epsilonShadowing : ℝ → Prop
  deltaPseudoOrbit : ℝ → Prop
  shadowingDistance : ℝ × ℝ → ℝ
  traceablePerturbations : Prop
  LipschitzShadowing : Prop

structure ShadowingPropertyEvidence {M : Type u} [MetricSpace M] {f : M → M} (S : ShadowingPropertyPackage M f) where
  epsilonShadowingClosed : ∀ ε > 0, S.epsilonShadowing ε
  deltaPseudoOrbitClosed : ∀ δ > 0, S.deltaPseudoOrbit δ
  traceablePerturbationsClosed : S.traceablePerturbations
  LipschitzShadowingClosed : S.LipschitzShadowing

def ShadowingPropertyClosed {M : Type u} [MetricSpace M] {f : M → M} (S : ShadowingPropertyPackage M f) : Prop :=
  (∀ ε > 0, S.epsilonShadowing ε) ∧ (∀ δ > 0, S.deltaPseudoOrbit δ) ∧ S.traceablePerturbations ∧ S.LipschitzShadowing

theorem shadowing_property_closed_from_evidence {M : Type u} [MetricSpace M] {f : M → M} (S : ShadowingPropertyPackage M f) (E : ShadowingPropertyEvidence S) : ShadowingPropertyClosed S := by
  exact And.intro E.epsilonShadowingClosed (And.intro E.deltaPseudoOrbitClosed (And.intro E.traceablePerturbationsClosed E.LipschitzShadowingClosed))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse
