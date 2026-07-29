import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure PredualStructure where
  predual : Type u
  pairing : predual → (DualAlgebra.carrier) → ℝ
  isSeparating : Prop
  weakStarTopology : TopologicalSpace (DualAlgebra.carrier)
  predualIsBanach : Prop

def PredualStructureClosed (P : PredualStructure) : Prop :=
  P.isSeparating ∧ P.predualIsBanach

theorem predual_structure_closed_from_evidence (P : PredualStructure) (E : P.isSeparating ∧ P.predualIsBanach) : PredualStructureClosed P := by
  exact E

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse
