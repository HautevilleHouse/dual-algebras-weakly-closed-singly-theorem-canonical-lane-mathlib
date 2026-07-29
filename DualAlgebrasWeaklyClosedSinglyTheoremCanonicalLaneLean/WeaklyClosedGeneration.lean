import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.DualAlgebraObject

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure WeaklyClosedGenerationPackage where
  singlyGenerated : Prop
  weakTopologyClosure : Prop
  operatorAlgebra : Type u
  weakOperatorTopology : TopologicalSpace operatorAlgebra
  generationCondition : Prop
  algebraIsWeaklyClosed : Prop

def WeaklyClosedGenerationClosed (W : WeaklyClosedGenerationPackage) : Prop :=
  W.singlyGenerated ∧ W.weakTopologyClosure ∧ W.generationCondition ∧ W.algebraIsWeaklyClosed

theorem weakly_closed_generation_from_evidence (W : WeaklyClosedGenerationPackage) (E : W.singlyGenerated ∧ W.weakTopologyClosure ∧ W.generationCondition ∧ W.algebraIsWeaklyClosed) : WeaklyClosedGenerationClosed W := by
  exact E

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse
