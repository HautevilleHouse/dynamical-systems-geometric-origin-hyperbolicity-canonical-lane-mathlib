import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure HyperbolicDynamicalObject where
  manifold : Type
  topology : TopologicalSpace manifold
  diffeomorphism : manifold → manifold
  invariantSet : Set manifold
  hyperbolicStructure : Prop
  conclusion : hyperbolicStructure

def HyperbolicWitnessClosed (O : HyperbolicDynamicalObject) : Prop :=
  O.hyperbolicStructure

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse