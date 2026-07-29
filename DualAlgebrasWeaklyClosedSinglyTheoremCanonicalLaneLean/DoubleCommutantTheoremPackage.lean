import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure DoubleCommutantTheoremPackage (A : DualAlgebraObject) where
  commutantSubalgebra : WeaklyClosedSubalgebraPackage A
  doubleCommutant : Prop
  containment : Prop
  vonNeumannBicommutant : Prop

structure DoubleCommutantTheoremEvidence {A : DualAlgebraObject}
    (D : DoubleCommutantTheoremPackage A) where
  doubleCommutantClosed : D.doubleCommutant
  containmentClosed : D.containment
  vonNeumannBicommutantClosed : D.vonNeumannBicommutant

def DoubleCommutantTheoremClosed {A : DualAlgebraObject}
    (D : DoubleCommutantTheoremPackage A) : Prop :=
  D.doubleCommutant ∧ D.containment ∧ D.vonNeumannBicommutant

theorem double_commutant_theorem_closed_from_evidence
    {A : DualAlgebraObject} (D : DoubleCommutantTheoremPackage A)
    (E : DoubleCommutantTheoremEvidence D) : DoubleCommutantTheoremClosed D := by
  exact And.intro E.doubleCommutantClosed
    (And.intro E.containmentClosed E.vonNeumannBicommutantClosed)

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse