import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact trivial

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse