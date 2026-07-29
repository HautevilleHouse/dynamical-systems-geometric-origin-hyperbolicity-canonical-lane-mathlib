import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure AxiomAPackage where
  nonWanderingSetHyperbolic : Prop
  periodicPointsDense : Prop
  spectralDecomposition : Prop
  noCycles : Prop
  topologicalTransitivityOnBasicSets : Prop

structure AxiomAEvidence (A : AxiomAPackage) where
  nonWanderingSetHyperbolicClosed : A.nonWanderingSetHyperbolic
  periodicPointsDenseClosed : A.periodicPointsDense
  spectralDecompositionClosed : A.spectralDecomposition
  noCyclesClosed : A.noCycles
  topologicalTransitivityOnBasicSetsClosed : A.topologicalTransitivityOnBasicSets

def AxiomAClosed (A : AxiomAPackage) : Prop :=
  A.nonWanderingSetHyperbolic ∧ A.periodicPointsDense ∧ A.spectralDecomposition ∧
  A.noCycles ∧ A.topologicalTransitivityOnBasicSets

theorem axiom_a_closed_from_evidence (A : AxiomAPackage) (E : AxiomAEvidence A) : AxiomAClosed A := by
  exact And.intro E.nonWanderingSetHyperbolicClosed
    (And.intro E.periodicPointsDenseClosed
      (And.intro E.spectralDecompositionClosed
        (And.intro E.noCyclesClosed E.topologicalTransitivityOnBasicSetsClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse