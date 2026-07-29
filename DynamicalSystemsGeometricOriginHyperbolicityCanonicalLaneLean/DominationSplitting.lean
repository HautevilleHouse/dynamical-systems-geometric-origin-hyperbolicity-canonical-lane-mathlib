import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure DominationSplittingPackage (M : Type u) [TopologicalSpace M] [CompactSpace M] (f : M → M) where
  tangentBundle : Type v
  linearAction : ℕ → tangentBundle → tangentBundle
  dominatedBundle : tangentBundle → Prop
  uniformDichotomy : Prop
  OseledetsRefinement : Prop

structure DominationSplittingEvidence {M : Type u} [TopologicalSpace M] [CompactSpace M] {f : M → M} (D : DominationSplittingPackage M f) where
  dominatedBundleClosed : ∀ v : D.tangentBundle, D.dominatedBundle v
  uniformDichotomyClosed : D.uniformDichotomy
  OseledetsRefinementClosed : D.OseledetsRefinement

def DominationSplittingClosed {M : Type u} [TopologicalSpace M] [CompactSpace M] {f : M → M} (D : DominationSplittingPackage M f) : Prop :=
  (∀ v : D.tangentBundle, D.dominatedBundle v) ∧ D.uniformDichotomy ∧ D.OseledetsRefinement

theorem domination_splitting_closed_from_evidence {M : Type u} [TopologicalSpace M] [CompactSpace M] {f : M → M} (D : DominationSplittingPackage M f) (E : DominationSplittingEvidence D) : DominationSplittingClosed D := by
  exact And.intro E.dominatedBundleClosed (And.intro E.uniformDichotomyClosed E.OseledetsRefinementClosed)

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse
