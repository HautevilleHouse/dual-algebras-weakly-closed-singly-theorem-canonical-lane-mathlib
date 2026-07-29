import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure CommutantTheoremPackage where
  algebra : DualAlgebra
  commutantClosed : Prop
  doubleCommutantEqualsAlgebra : Prop
  weaklyClosedImpliesCommutant : Prop

def CommutantTheoremClosed (C : CommutantTheoremPackage) : Prop :=
  C.commutantClosed ∧ C.doubleCommutantEqualsAlgebra ∧ C.weaklyClosedImpliesCommutant

theorem commutant_theorem_closed_from_evidence (C : CommutantTheoremPackage) (E : C.commutantClosed ∧ C.doubleCommutantEqualsAlgebra ∧ C.weaklyClosedImpliesCommutant) : CommutantTheoremClosed C := by
  exact E

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse
