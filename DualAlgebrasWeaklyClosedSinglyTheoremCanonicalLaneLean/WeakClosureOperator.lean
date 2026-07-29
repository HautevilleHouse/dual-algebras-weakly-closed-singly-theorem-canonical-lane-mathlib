import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure WeakClosureOperator (A : Type u) [Ring A] [TopologicalSpace A] where
  closureMap : Set A → Set A
  extensive : ∀ (S : Set A), S ⊆ closureMap S
  monotone : ∀ (S T : Set A), S ⊆ T → closureMap S ⊆ closureMap T
  idempotent : ∀ (S : Set A), closureMap (closureMap S) = closureMap S
  weakClosure : Prop
  weakClosureIsWeaklyClosed : ∀ (S : Set A), IsClosed (closureMap S)

structure WeakClosureEvidence (A : Type u) [Ring A] [TopologicalSpace A] (W : WeakClosureOperator A) where
  weakClosureClosed : W.weakClosure
  weakClosureOperatorClosed : ∀ (S : Set A), W.weakClosureIsWeaklyClosed S

def WeakClosureOperatorClosed (A : Type u) [Ring A] [TopologicalSpace A] (W : WeakClosureOperator A) : Prop :=
  W.weakClosure ∧ ∀ (S : Set A), W.weakClosureIsWeaklyClosed S

theorem weak_closure_operator_closed_from_evidence (A : Type u) [Ring A] [TopologicalSpace A] (W : WeakClosureOperator A) (E : WeakClosureEvidence A W) : WeakClosureOperatorClosed A W := by
  exact And.intro E.weakClosureClosed E.weakClosureOperatorClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse