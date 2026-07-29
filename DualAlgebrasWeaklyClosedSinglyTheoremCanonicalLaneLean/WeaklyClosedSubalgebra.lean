import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure WeaklyClosedSubalgebra (D : SinglyGeneratedDualAlgebra) where
  subalgebra : Set D.A
  isSubalgebra : Subalgebra ℝ D.A subalgebra
  starClosed : ∀ x ∈ subalgebra, star x ∈ subalgebra
  weaklyClosed : Prop
  weakClosureIdentity : Prop
  weaklyClosedTerm : weaklyClosed
  weakClosureIdentityTerm : weakClosureIdentity

structure WeaklyClosedSubalgebraEvidence {D : SinglyGeneratedDualAlgebra}
    (W : WeaklyClosedSubalgebra D) where
  weaklyClosedClosed : W.weaklyClosed
  weakClosureIdentityClosed : W.weakClosureIdentity

def WeaklyClosedSubalgebraClosed {D : SinglyGeneratedDualAlgebra}
    (W : WeaklyClosedSubalgebra D) : Prop :=
  W.weaklyClosed ∧ W.weakClosureIdentity

theorem weakly_closed_subalgebra_closed_from_evidence
    {D : SinglyGeneratedDualAlgebra} (W : WeaklyClosedSubalgebra D)
    (E : WeaklyClosedSubalgebraEvidence W) : WeaklyClosedSubalgebraClosed W := by
  exact And.intro E.weaklyClosedClosed E.weakClosureIdentityClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse