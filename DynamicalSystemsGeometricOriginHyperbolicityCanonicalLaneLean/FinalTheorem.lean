import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

def ConstrainedHyperbolicityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hyperbolicity_endgame (A : AdmissibleClass) : ConstrainedHyperbolicityClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse