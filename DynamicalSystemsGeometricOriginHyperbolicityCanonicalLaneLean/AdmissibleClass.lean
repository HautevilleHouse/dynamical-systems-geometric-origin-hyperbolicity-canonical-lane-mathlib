import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure DynamicalHyperbolicAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  dynamics : manifold → manifold
  hyperbolicStructure : Prop
  persistenceUnderPerturbation : Prop
  conclusion : persistenceUnderPerturbation

structure AdmissibleClass where
  object : DynamicalHyperbolicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.persistenceUnderPerturbation ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse