import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SinglyGeneratedStateSpace (D : SinglyGeneratedDualAlgebra) where
  states : Set (D.A → ℂ)
  positive : Prop
  unital : Prop
  normal : Prop
  weaklyClosed : Prop
  generatedByState : D.A → ℂ
  positiveTerm : positive
  unitalTerm : unital
  normalTerm : normal
  weaklyClosedTerm : weaklyClosed

structure SinglyGeneratedStateSpaceEvidence {D : SinglyGeneratedDualAlgebra}
    (S : SinglyGeneratedStateSpace D) where
  positiveClosed : S.positive
  unitalClosed : S.unital
  normalClosed : S.normal
  weaklyClosedClosed : S.weaklyClosed

def SinglyGeneratedStateSpaceClosed {D : SinglyGeneratedDualAlgebra}
    (S : SinglyGeneratedStateSpace D) : Prop :=
  S.positive ∧ S.unital ∧ S.normal ∧ S.weaklyClosed

theorem singly_generated_state_space_closed_from_evidence
    {D : SinglyGeneratedDualAlgebra} (S : SinglyGeneratedStateSpace D)
    (E : SinglyGeneratedStateSpaceEvidence S) : SinglyGeneratedStateSpaceClosed S := by
  exact And.intro E.positiveClosed
    (And.intro E.unitalClosed (And.intro E.normalClosed E.weaklyClosedClosed))

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse