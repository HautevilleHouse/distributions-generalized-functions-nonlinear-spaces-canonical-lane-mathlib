import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneralizedFunctionSpaceClosed A.object.distribution ∧ NonlinearSpaceClosed A.object.nonlinearStructure

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro (generalized_function_space_closed A.object.distribution) (nonlinear_space_closed A.object.nonlinearStructure)

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse