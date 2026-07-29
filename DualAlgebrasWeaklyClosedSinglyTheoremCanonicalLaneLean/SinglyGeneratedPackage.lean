import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SinglyGeneratedPackage (A : DualAlgebraObject) where
  generator : A.carrier
  subalgebraGenerated : WeaklyClosedSubalgebraPackage A
  density : Prop
  normality : Prop

structure SinglyGeneratedEvidence {A : DualAlgebraObject}
    (S : SinglyGeneratedPackage A) where
  densityClosed : S.density
  normalityClosed : S.normality

def SinglyGeneratedClosed {A : DualAlgebraObject}
    (S : SinglyGeneratedPackage A) : Prop :=
  S.density ∧ S.normality

theorem singly_generated_closed_from_evidence
    {A : DualAlgebraObject} (S : SinglyGeneratedPackage A)
    (E : SinglyGeneratedEvidence S) : SinglyGeneratedClosed S := by
  exact And.intro E.densityClosed E.normalityClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse