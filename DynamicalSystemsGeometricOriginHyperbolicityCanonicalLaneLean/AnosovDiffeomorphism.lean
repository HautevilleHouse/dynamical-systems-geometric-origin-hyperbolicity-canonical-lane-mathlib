import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure AnosovDiffeomorphismPackage {U : UniformHyperbolicityPackage} where
  diffeomorphism : Type u
  invariantSplitting : Prop
  expandingContracting : Prop
  densePeriodicPoints : Prop
  topologicalTransitivity : Prop

structure AnosovDiffeomorphismEvidence {U : UniformHyperbolicityPackage}
    (A : AnosovDiffeomorphismPackage U) where
  invariantSplittingClosed : A.invariantSplitting
  expandingContractingClosed : A.expandingContracting
  densePeriodicPointsClosed : A.densePeriodicPoints
  topologicalTransitivityClosed : A.topologicalTransitivity

def AnosovDiffeomorphismClosed {U : UniformHyperbolicityPackage}
    (A : AnosovDiffeomorphismPackage U) : Prop :=
  A.invariantSplitting ∧ A.expandingContracting ∧
  A.densePeriodicPoints ∧ A.topologicalTransitivity

theorem anosov_diffeomorphism_closed_from_evidence {U : UniformHyperbolicityPackage}
    (A : AnosovDiffeomorphismPackage U) (E : AnosovDiffeomorphismEvidence A) :
    AnosovDiffeomorphismClosed A := by
  exact And.intro E.invariantSplittingClosed
    (And.intro E.expandingContractingClosed
      (And.intro E.densePeriodicPointsClosed E.topologicalTransitivityClosed))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse