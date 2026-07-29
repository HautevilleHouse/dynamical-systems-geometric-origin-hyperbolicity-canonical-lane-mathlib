import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure StableManifoldPackage {U : UniformHyperbolicityPackage} where
  hyperbolicFixedPoint : Prop
  localStableManifold : Type u
  localUnstableManifold : Type u
  tangentSpaceSplitting : Prop
  smoothness : Prop

structure StableManifoldEvidence {U : UniformHyperbolicityPackage}
    (S : StableManifoldPackage U) where
  hyperbolicFixedPointClosed : S.hyperbolicFixedPoint
  tangentSpaceSplittingClosed : S.tangentSpaceSplitting
  smoothnessClosed : S.smoothness

def StableManifoldClosed {U : UniformHyperbolicityPackage}
    (S : StableManifoldPackage U) : Prop :=
  S.hyperbolicFixedPoint ∧ S.tangentSpaceSplitting ∧ S.smoothness

theorem stable_manifold_closed_from_evidence {U : UniformHyperbolicityPackage}
    (S : StableManifoldPackage U) (E : StableManifoldEvidence S) :
    StableManifoldClosed S := by
  exact And.intro E.hyperbolicFixedPointClosed
    (And.intro E.tangentSpaceSplittingClosed E.smoothnessClosed)

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse