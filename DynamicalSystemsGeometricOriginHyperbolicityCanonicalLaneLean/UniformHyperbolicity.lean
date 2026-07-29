import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure UniformHyperbolicityPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  invariantSet : Set manifold
  tangentBundle : Type w
  splitting : Type x
  expansionContractionRates : Prop
  invarianceOfSplitting : Prop
  uniformBounds : Prop

structure UniformHyperbolicityEvidence (P : UniformHyperbolicityPackage) where
  expansionContractionRatesClosed : P.expansionContractionRates
  invarianceOfSplittingClosed : P.invarianceOfSplitting
  uniformBoundsClosed : P.uniformBounds

def UniformHyperbolicityClosed (P : UniformHyperbolicityPackage) : Prop :=
  P.expansionContractionRates ∧ P.invarianceOfSplitting ∧ P.uniformBounds

theorem uniform_hyperbolicity_closed_from_evidence (P : UniformHyperbolicityPackage)
    (E : UniformHyperbolicityEvidence P) : UniformHyperbolicityClosed P := by
  exact And.intro E.expansionContractionRatesClosed
    (And.intro E.invarianceOfSplittingClosed E.uniformBoundsClosed)

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse