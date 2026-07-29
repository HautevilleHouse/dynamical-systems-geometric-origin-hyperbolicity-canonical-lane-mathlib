import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure StableUnstableBundles where
  tangentBundle : Type
  stableFiber : tangentBundle → Type
  unstableFiber : tangentBundle → Type
  invarianceUnderFlow : Prop
  exponentialContraction : Prop
  exponentialExpansion : Prop
  directSumDecomposition : stableFiber × unstableFiber ≡ tangentBundle

def BundlesClosed (B : StableUnstableBundles) : Prop :=
  B.invarianceUnderFlow ∧ B.exponentialContraction ∧ B.exponentialExpansion

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse