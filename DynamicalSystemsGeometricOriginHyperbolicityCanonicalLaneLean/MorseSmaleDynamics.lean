import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure MorseSmalePackage where
  hyperbolicFixedPoints : Prop
  transverseIntersections : Prop
  noCycles : Prop
  gradientLikeFlow : Prop
  chainRecurrentSetFinite : Prop

structure MorseSmaleEvidence (M : MorseSmalePackage) where
  hyperbolicFixedPointsClosed : M.hyperbolicFixedPoints
  transverseIntersectionsClosed : M.transverseIntersections
  noCyclesClosed : M.noCycles
  gradientLikeFlowClosed : M.gradientLikeFlow
  chainRecurrentSetFiniteClosed : M.chainRecurrentSetFinite

def MorseSmaleClosed (M : MorseSmalePackage) : Prop :=
  M.hyperbolicFixedPoints ∧ M.transverseIntersections ∧ M.noCycles ∧
  M.gradientLikeFlow ∧ M.chainRecurrentSetFinite

theorem morse_smale_closed_from_evidence (M : MorseSmalePackage) (E : MorseSmaleEvidence M) :
    MorseSmaleClosed M := by
  exact And.intro E.hyperbolicFixedPointsClosed
    (And.intro E.transverseIntersectionsClosed
      (And.intro E.noCyclesClosed
        (And.intro E.gradientLikeFlowClosed E.chainRecurrentSetFiniteClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse