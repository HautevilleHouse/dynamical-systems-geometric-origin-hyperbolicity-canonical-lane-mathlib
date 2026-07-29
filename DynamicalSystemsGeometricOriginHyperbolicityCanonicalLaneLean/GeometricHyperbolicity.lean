import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure HyperbolicSet where
  carrier : Type u
  topology : TopologicalSpace carrier
  invariantSet : Prop
  hyperbolicStructure : Prop
  stableDistribution : Prop
  unstableDistribution : Prop
  expansionContractionRates : Prop

structure HyperbolicSetEvidence (H : HyperbolicSet) where
  invariantSetClosed : H.invariantSet
  hyperbolicStructureClosed : H.hyperbolicStructure
  stableDistributionClosed : H.stableDistribution
  unstableDistributionClosed : H.unstableDistribution
  expansionContractionRatesClosed : H.expansionContractionRates

def HyperbolicSetClosed (H : HyperbolicSet) : Prop :=
  H.invariantSet ∧ H.hyperbolicStructure ∧ H.stableDistribution ∧ H.unstableDistribution ∧ H.expansionContractionRates

theorem hyperbolic_set_closed_from_evidence (H : HyperbolicSet) (E : HyperbolicSetEvidence H) : HyperbolicSetClosed H :=
  And.intro E.invariantSetClosed
    (And.intro E.hyperbolicStructureClosed
      (And.intro E.stableDistributionClosed
        (And.intro E.unstableDistributionClosed E.expansionContractionRatesClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse