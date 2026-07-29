import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SpectralMeasurePackage (A : AdmissibleClass) where
  spectralMeasure : Type u
  supportCompact : Prop
  integralRepresentsGenerator : Prop
  positivityPreserving : Prop
  supportCompactTerm : supportCompact
  integralRepresentsGeneratorTerm : integralRepresentsGenerator
  positivityPreservingTerm : positivityPreserving

def SpectralMeasureClosed (A : AdmissibleClass) (S : SpectralMeasurePackage A) : Prop :=
  S.supportCompact ∧ S.integralRepresentsGenerator ∧ S.positivityPreserving

theorem spectral_measure_closed_from_evidence (A : AdmissibleClass) (S : SpectralMeasurePackage A) :
    SpectralMeasureClosed A S := by
  exact And.intro S.supportCompactTerm (And.intro S.integralRepresentsGeneratorTerm S.positivityPreservingTerm)

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse
