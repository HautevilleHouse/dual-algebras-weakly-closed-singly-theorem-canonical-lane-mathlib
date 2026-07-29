import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure DualAlgebra (A : Type u) where
  carrier : Type v
  algebra : Algebra A carrier
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  closedUnderWeakOperatorTopology : Prop

structure DualAlgebraEvidence (D : DualAlgebra) where
  algebraClosed : D.closedUnderWeakOperatorTopology

def DualAlgebraClosed (D : DualAlgebra) : Prop :=
  D.closedUnderWeakOperatorTopology

theorem dual_algebra_closed_from_evidence (D : DualAlgebra) (E : DualAlgebraEvidence D) :
    DualAlgebraClosed D := by
  exact E.algebraClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse