import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure DualAlgebraObject where
  carrier : Type u
  algebraStructure : Type v
  sigmaWeakTopology : Prop
  commutantDoubleCommutantProperty : Prop
  singlyGenerated : Prop
  conclusion : sigmaWeakTopology ∧ commutantDoubleCommutantProperty ∧ singlyGenerated

structure AdmissibleClass where
  object : DualAlgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse