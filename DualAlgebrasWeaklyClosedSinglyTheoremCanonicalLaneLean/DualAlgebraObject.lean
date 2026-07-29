import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure DualAlgebra where
  carrier : Type u
  algebraStructure : NonUnitalAlg ℝ carrier
  closedUnderWeakOperatorTopology : Prop

structure AdmittedDualAlgebraObject where
  algebra : DualAlgebra
  weaklyClosedSinglyGenerated : Prop
  conclusion : weaklyClosedSinglyGenerated

def DualAlgebraWitnessClosed (O : AdmittedDualAlgebraObject) : Prop :=
  O.weaklyClosedSinglyGenerated

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse
