import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure GeometricOriginBridge where
  source : HyperbolicDynamicalObject
  target : HyperbolicDynamicalObject
  conjugacy : source.manifold → target.manifold
  orbitPreserving : Prop
  hyperbolicityPreserving : Prop
  bridgeWitness : orbitPreserving ∧ hyperbolicityPreserving

def GeometricOriginBridgeClosed (B : GeometricOriginBridge) : Prop :=
  B.orbitPreserving ∧ B.hyperbolicityPreserving

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse