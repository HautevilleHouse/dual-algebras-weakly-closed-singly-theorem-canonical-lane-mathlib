import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SinglyGeneratedDualAlgebra where
  A : Type u
  algebra : Algebra ℝ A
  star : StarRing A
  norm : Norm A
  isSinglyGenerated : Prop
  generatedBy : A
  unitBallClosed : Prop
  isSinglyGeneratedTerm : isSinglyGenerated
  unitBallClosedTerm : unitBallClosed

structure SinglyGeneratedDualAlgebraEvidence (D : SinglyGeneratedDualAlgebra) where
  isSinglyGeneratedClosed : D.isSinglyGenerated
  unitBallClosedClosed : D.unitBallClosed

def SinglyGeneratedDualAlgebraClosed (D : SinglyGeneratedDualAlgebra) : Prop :=
  D.isSinglyGenerated ∧ D.unitBallClosed

theorem singly_generated_dual_algebra_closed_from_evidence
    (D : SinglyGeneratedDualAlgebra) (E : SinglyGeneratedDualAlgebraEvidence D) :
    SinglyGeneratedDualAlgebraClosed D := by
  exact And.intro E.isSinglyGeneratedClosed E.unitBallClosedClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse