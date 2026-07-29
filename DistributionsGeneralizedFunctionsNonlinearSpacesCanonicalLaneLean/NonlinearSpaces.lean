import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure NonlinearSpace where
  carrier : Type u
  addition : carrier → carrier → carrier
  scalarMultiplication : ℝ → carrier → carrier
  nonlinearity : Prop
  continuity : Prop
  homotopyContinuity : Prop
  nonlinearityClosed : nonlinearity
  continuityClosed : continuity
  homotopyContinuityClosed : homotopyContinuity

def NonlinearSpaceClosed (N : NonlinearSpace) : Prop :=
  N.nonlinearity ∧ N.continuity ∧ N.homotopyContinuity

theorem nonlinear_space_closed (N : NonlinearSpace) : NonlinearSpaceClosed N := by
  exact And.intro N.nonlinearityClosed (And.intro N.continuityClosed N.homotopyContinuityClosed)

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse