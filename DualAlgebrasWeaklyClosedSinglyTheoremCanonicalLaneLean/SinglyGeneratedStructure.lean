import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure SinglyGeneratedStructure (A : Type u) [Ring A] [TopologicalSpace A] where
  generator : A
  generatedSubalgebra : Subalgebra A A
  weakClosure : Subalgebra A A
  generatorInWeakClosure : generator ∈ weakClosure.carrier
  weakClosureGenerated : weakClosure = Subalgebra.closure (Set.range (fun (n : ℕ) => generator ^ n))

structure SinglyGeneratedEvidence (A : Type u) [Ring A] [TopologicalSpace A] (S : SinglyGeneratedStructure A) where
  generatorInWeakClosureClosed : S.generatorInWeakClosure
  weakClosureGeneratedClosed : S.weakClosureGenerated

def SinglyGeneratedClosed (A : Type u) [Ring A] [TopologicalSpace A] (S : SinglyGeneratedStructure A) : Prop :=
  S.generatorInWeakClosure ∧ S.weakClosureGenerated

theorem singly_generated_closed_from_evidence (A : Type u) [Ring A] [TopologicalSpace A] (S : SinglyGeneratedStructure A) (E : SinglyGeneratedEvidence A S) : SinglyGeneratedClosed A S := by
  exact And.intro E.generatorInWeakClosureClosed E.weakClosureGeneratedClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse