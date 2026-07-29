import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure DualAlgebra (A : Type u) [Ring A] where
  carrier : Set A
  subalgebra : Subalgebra A A
  weakTopology : TopologicalSpace A
  closedUnderWeakLimits : Prop

structure DualAlgebraPackage (A : Type u) [Ring A] [TopologicalSpace A] where
  algebra : DualAlgebra A
  singlyGenerated : Prop
  generator : A
  weakClosure : Prop
  generatorGeneratesWeaklyClosed : generator ∈ algebra.carrier → weakClosure

structure DualAlgebraEvidence (A : Type u) [Ring A] [TopologicalSpace A] (P : DualAlgebraPackage A) where
  singlyGeneratedClosed : P.singlyGenerated
  weakClosureClosed : P.weakClosure
  generatorGeneratesWeaklyClosedClosed : P.generatorGeneratesWeaklyClosed

def DualAlgebraClosed (A : Type u) [Ring A] [TopologicalSpace A] (P : DualAlgebraPackage A) : Prop :=
  P.singlyGenerated ∧ P.weakClosure ∧ P.generatorGeneratesWeaklyClosed

theorem dual_algebra_closed_from_evidence (A : Type u) [Ring A] [TopologicalSpace A] (P : DualAlgebraPackage A) (E : DualAlgebraEvidence A P) : DualAlgebraClosed A P := by
  exact And.intro E.singlyGeneratedClosed (And.intro E.weakClosureClosed E.generatorGeneratesWeaklyClosedClosed)

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse