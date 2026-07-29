import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SpectralTheorem (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) where
  generator : D.carrier
  spectrum : Set ℂ
  functionalCalculus : ContinuousMap (spectrum) ℂ → D.carrier
  spectralMeasures : Prop
  resolutionOfIdentity : Prop

structure SpectralTheoremEvidence (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) (S : SpectralTheorem A D) where
  spectralMeasuresClosed : S.spectralMeasures
  resolutionOfIdentityClosed : S.resolutionOfIdentity

def SpectralTheoremClosed (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) (S : SpectralTheorem A D) : Prop :=
  S.spectralMeasures ∧ S.resolutionOfIdentity

theorem spectral_theorem_closed_from_evidence (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) (S : SpectralTheorem A D) (E : SpectralTheoremEvidence A D S) :
    SpectralTheoremClosed A D S := by
  exact And.intro E.spectralMeasuresClosed E.resolutionOfIdentityClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse