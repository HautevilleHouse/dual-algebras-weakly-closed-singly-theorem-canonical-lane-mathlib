import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure BicommutantTheorem (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) where
  subalgebra : Set D.carrier
  commutant : Set D.carrier
  doubleCommutant : Set D.carrier := commutant.commutant
  closureProperty : subalgebra ⊆ doubleCommutant
  weaklyClosure : IsClosed subalgebra → subalgebra = doubleCommutant

structure BicommutantEvidence (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) (B : BicommutantTheorem A D) where
  closurePropertyClosed : B.closureProperty
  weaklyClosureClosed : B.weaklyClosure

def BicommutantClosed (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) (B : BicommutantTheorem A D) : Prop :=
  B.closureProperty ∧ B.weaklyClosure

theorem bicommutant_closed_from_evidence (A : Type u) [TopologicalSpace A] (D : DualAlgebra A) (B : BicommutantTheorem A D) (E : BicommutantEvidence A D B) :
    BicommutantClosed A D B := by
  exact And.intro E.closurePropertyClosed E.weaklyClosureClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse