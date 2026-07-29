import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure GeodesicFlowPackage (M : Type u) [TopologicalSpace M] where
  hyperbolicStructure : Prop
  stableManifoldTheorem : Prop
  unstableManifoldTheorem : Prop
  productStructure : Prop
  topologicalTransitivity : Prop

structure GeodesicFlowEvidence {M : Type u} [TopologicalSpace M] (G : GeodesicFlowPackage M) where
  hyperbolicStructureClosed : G.hyperbolicStructure
  stableManifoldTheoremClosed : G.stableManifoldTheorem
  unstableManifoldTheoremClosed : G.unstableManifoldTheorem
  productStructureClosed : G.productStructure
  topologicalTransitivityClosed : G.topologicalTransitivity

def GeodesicFlowClosed {M : Type u} [TopologicalSpace M] (G : GeodesicFlowPackage M) : Prop :=
  G.hyperbolicStructure ∧ G.stableManifoldTheorem ∧ G.unstableManifoldTheorem ∧
  G.productStructure ∧ G.topologicalTransitivity

theorem geodesic_flow_closed_from_evidence {M : Type u} [TopologicalSpace M]
    (G : GeodesicFlowPackage M) (E : GeodesicFlowEvidence G) : GeodesicFlowClosed G := by
  exact And.intro E.hyperbolicStructureClosed
    (And.intro E.stableManifoldTheoremClosed
      (And.intro E.unstableManifoldTheoremClosed
        (And.intro E.productStructureClosed E.topologicalTransitivityClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse