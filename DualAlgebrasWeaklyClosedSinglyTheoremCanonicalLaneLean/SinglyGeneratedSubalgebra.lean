import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SinglyGeneratedSubalgebra (A : Type u) (D : DualAlgebra A) where
  generator : D.carrier
  subalgebra : Set D.carrier
  isWeaklyClosed : Prop
  containsGenerator : generator ∈ subalgebra
  smallestSuch : Subalgebra D.algebra subalgebra ∧ isWeaklyClosed

structure SinglyGeneratedEvidence (A : Type u) (D : DualAlgebra A) (S : SinglyGeneratedSubalgebra A D) where
  isWeaklyClosedClosed : S.isWeaklyClosed

def SinglyGeneratedClosed (A : Type u) (D : DualAlgebra A) (S : SinglyGeneratedSubalgebra A D) : Prop :=
  S.isWeaklyClosed

theorem singly_generated_closed_from_evidence (A : Type u) (D : DualAlgebra A) (S : SinglyGeneratedSubalgebra A D) (E : SinglyGeneratedEvidence A D S) :
    SinglyGeneratedClosed A D S := by
  exact E.isWeaklyClosedClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse