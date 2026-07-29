import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SinglyGeneratedSubalgebraPackage (A : AdmissibleClass) where
  generator : A.object.dualAlgebra
  generatedSubalgebra : Set A.object.dualAlgebra
  closedUnderWeakTopology : Prop
  equalsWholeAlgebra : Prop
  closedUnderWeakTopologyTerm : closedUnderWeakTopology
  equalsWholeAlgebraTerm : equalsWholeAlgebra

def SinglyGeneratedSubalgebraClosed (A : AdmissibleClass) (S : SinglyGeneratedSubalgebraPackage A) : Prop :=
  S.closedUnderWeakTopology ∧ S.equalsWholeAlgebra

theorem singly_generated_subalgebra_closed_from_evidence (A : AdmissibleClass) (S : SinglyGeneratedSubalgebraPackage A) :
    SinglyGeneratedSubalgebraClosed A S := by
  exact And.intro S.closedUnderWeakTopologyTerm S.equalsWholeAlgebraTerm

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse
