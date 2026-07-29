import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure WeaklyClosedSubalgebraPackage (A : DualAlgebraObject) where
  subalgebra : Type u
  inclusion : A.carrier → subalgebra
  weakClosure : Prop
  containsIdentity : Prop
  invariantUnderCommutant : Prop

structure WeaklyClosedSubalgebraEvidence {A : DualAlgebraObject}
    (P : WeaklyClosedSubalgebraPackage A) where
  weakClosureClosed : P.weakClosure
  containsIdentityClosed : P.containsIdentity
  invariantUnderCommutantClosed : P.invariantUnderCommutant

def WeaklyClosedSubalgebraClosed {A : DualAlgebraObject}
    (P : WeaklyClosedSubalgebraPackage A) : Prop :=
  P.weakClosure ∧ P.containsIdentity ∧ P.invariantUnderCommutant

theorem weakly_closed_subalgebra_closed_from_evidence
    {A : DualAlgebraObject} (P : WeaklyClosedSubalgebraPackage A)
    (E : WeaklyClosedSubalgebraEvidence P) : WeaklyClosedSubalgebraClosed P := by
  exact And.intro E.weakClosureClosed
    (And.intro E.containsIdentityClosed E.invariantUnderCommutantClosed)

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse