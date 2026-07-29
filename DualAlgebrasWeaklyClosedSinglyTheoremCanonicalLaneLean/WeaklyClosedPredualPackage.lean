import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure WeaklyClosedPredualPackage (A : AdmissibleClass) where
  predualSpace : Type u
  predualTopology : TopologicalSpace predualSpace
  algebraAction : predualSpace → A.object.dualAlgebra
  closedRange : Prop
  denseRange : Prop
  normalFunctionalEmbedding : Prop
  closedRangeTerm : closedRange
  denseRangeTerm : denseRange
  normalFunctionalEmbeddingTerm : normalFunctionalEmbedding

def WeaklyClosedPredualClosed (A : AdmissibleClass) (W : WeaklyClosedPredualPackage A) : Prop :=
  W.closedRange ∧ W.denseRange ∧ W.normalFunctionalEmbedding

theorem weakly_closed_predual_closed_from_evidence (A : AdmissibleClass) (W : WeaklyClosedPredualPackage A) :
    WeaklyClosedPredualClosed A W := by
  exact And.intro W.closedRangeTerm (And.intro W.denseRangeTerm W.normalFunctionalEmbeddingTerm)

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse
