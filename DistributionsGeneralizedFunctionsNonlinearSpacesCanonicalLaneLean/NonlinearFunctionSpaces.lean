import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure NonlinearFunctionSpace where
  carrier : Type u
  norm : carrier → ℝ
  multiplication : carrier → carrier → carrier
  multiplicationContinuous : Continuous (λ p : carrier × carrier => multiplication p.1 p.2)

structure NonlinearFunctionSpaceEvidence (N : NonlinearFunctionSpace) where
  multiplicationClosed : N.multiplicationContinuous

def NonlinearFunctionSpaceClosed (N : NonlinearFunctionSpace) : Prop :=
  N.multiplicationContinuous

theorem nonlinear_function_space_closed_from_evidence (N : NonlinearFunctionSpace) (E : NonlinearFunctionSpaceEvidence N) :
  NonlinearFunctionSpaceClosed N := by
  exact E.multiplicationClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse