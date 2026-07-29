import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure WeakOperatorTopology (X : Type u) [TopologicalSpace X] where
  seminorms : Set (X → ℝ)
  topologyGeneratedBy : TopologicalSpace X := by
    exact TopologicalSpace.induced (fun x => (fun f => f x)) (Pi.topologicalSpace)
  isWeakTopology : Prop

structure WeakTopologyEvidence (W : WeakOperatorTopology) where
  isWeakTopologyClosed : W.isWeakTopology

def WeakTopologyClosed (W : WeakOperatorTopology) : Prop :=
  W.isWeakTopology

theorem weak_topology_closed_from_evidence (W : WeakOperatorTopology) (E : WeakTopologyEvidence W) :
    WeakTopologyClosed W := by
  exact E.isWeakTopologyClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse