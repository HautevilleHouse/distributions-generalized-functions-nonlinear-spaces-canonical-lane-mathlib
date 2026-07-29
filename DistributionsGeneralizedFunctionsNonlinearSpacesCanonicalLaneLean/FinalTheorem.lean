import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

def ConstrainedDistributionsGeneralizedFunctionsNonlinearSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distributions_generalized_functions_nonlinear_spaces_endgame (A : AdmissibleClass) :
    ConstrainedDistributionsGeneralizedFunctionsNonlinearSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse