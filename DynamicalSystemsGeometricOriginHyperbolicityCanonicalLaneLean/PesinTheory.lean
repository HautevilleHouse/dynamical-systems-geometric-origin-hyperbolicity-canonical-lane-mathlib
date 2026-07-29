import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure PesinTheoryPackage where
  nonuniformHyperbolicity : Prop
  stableManifoldTheorem : Prop
  entropyFormula : Prop
  LyapunovExponents : Prop
  ergodicProperties : Prop

structure PesinTheoryEvidence (P : PesinTheoryPackage) where
  nonuniformHyperbolicityClosed : P.nonuniformHyperbolicity
  stableManifoldTheoremClosed : P.stableManifoldTheorem
  entropyFormulaClosed : P.entropyFormula
  LyapunovExponentsClosed : P.LyapunovExponents
  ergodicPropertiesClosed : P.ergodicProperties

def PesinTheoryClosed (P : PesinTheoryPackage) : Prop :=
  P.nonuniformHyperbolicity ∧ P.stableManifoldTheorem ∧ P.entropyFormula ∧
  P.LyapunovExponents ∧ P.ergodicProperties

theorem pesin_theory_closed_from_evidence (P : PesinTheoryPackage) (E : PesinTheoryEvidence P) :
    PesinTheoryClosed P := by
  exact And.intro E.nonuniformHyperbolicityClosed
    (And.intro E.stableManifoldTheoremClosed
      (And.intro E.entropyFormulaClosed
        (And.intro E.LyapunovExponentsClosed E.ergodicPropertiesClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse