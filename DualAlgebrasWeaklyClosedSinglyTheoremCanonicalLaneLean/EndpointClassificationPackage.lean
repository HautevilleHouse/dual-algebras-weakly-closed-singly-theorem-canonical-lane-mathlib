import canonicalLaneMathlib.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.AdmissibleClass
import DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean.DoubleCommutantTheoremPackage

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean

structure EndpointClassificationPackage {A : DualAlgebraObject}
    (D : DoubleCommutantTheoremPackage A) where
  endpointAlgebra : DualAlgebraObject
  endpointWeaklyClosed : WeaklyClosedSubalgebraPackage endpointAlgebra
  endpointSinglyGenerated : SinglyGeneratedPackage endpointAlgebra
  endpointMatchesTheorem : Prop

structure EndpointClassificationEvidence {A : DualAlgebraObject}
    {D : DoubleCommutantTheoremPackage A}
    (E : EndpointClassificationPackage D) where
  endpointMatchesTheoremClosed : E.endpointMatchesTheorem

def EndpointClassificationClosed {A : DualAlgebraObject}
    {D : DoubleCommutantTheoremPackage A}
    (E : EndpointClassificationPackage D) : Prop :=
  E.endpointMatchesTheorem

theorem endpoint_classification_closed_from_evidence
    {A : DualAlgebraObject} {D : DoubleCommutantTheoremPackage A}
    (E : EndpointClassificationPackage D)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E := by
  exact Ev.endpointMatchesTheoremClosed

end DualAlgebrasWeaklyClosedSinglyTheoremCanonicalLaneLean
end HautevilleHouse