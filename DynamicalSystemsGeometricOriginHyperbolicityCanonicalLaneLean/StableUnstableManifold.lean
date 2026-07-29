import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure StableUnstableManifoldPackage where
  hyperbolicSet : HyperbolicSet
  stableManifoldConstructed : Prop
  unstableManifoldConstructed : Prop
  tangentSpaceSplitting : Prop
  localStableManifoldProp : Prop
  localUnstableManifoldProp : Prop

structure StableUnstableManifoldEvidence (S : StableUnstableManifoldPackage) where
  stableManifoldClosed : S.stableManifoldConstructed
  unstableManifoldClosed : S.unstableManifoldConstructed
  tangentSpaceSplittingClosed : S.tangentSpaceSplitting
  localStableManifoldClosed : S.localStableManifoldProp
  localUnstableManifoldClosed : S.localUnstableManifoldProp

def StableUnstableManifoldClosed (S : StableUnstableManifoldPackage) : Prop :=
  S.stableManifoldConstructed ∧ S.unstableManifoldConstructed ∧ S.tangentSpaceSplitting ∧ S.localStableManifoldProp ∧ S.localUnstableManifoldProp

theorem stable_unstable_manifold_closed_from_evidence (S : StableUnstableManifoldPackage) (E : StableUnstableManifoldEvidence S) : StableUnstableManifoldClosed S :=
  And.intro E.stableManifoldClosed
    (And.intro E.unstableManifoldClosed
      (And.intro E.tangentSpaceSplittingClosed
        (And.intro E.localStableManifoldClosed E.localUnstableManifoldClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse