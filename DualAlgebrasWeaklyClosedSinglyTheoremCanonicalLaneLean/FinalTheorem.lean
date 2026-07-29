import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

def ConstrainedDualAlgebrasClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_algebras_endgame (A : AdmissibleClass) : ConstrainedDualAlgebrasClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse