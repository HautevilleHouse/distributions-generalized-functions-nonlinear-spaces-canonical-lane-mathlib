import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure GeneralizedFunctionSpace where
  carrier : Type u
  addition : carrier → carrier → carrier
  scalarMultiplication : ℝ → carrier → carrier
  topology : TopologicalSpace carrier
  additionContinuous : Continuous (λ p : carrier × carrier => addition p.1 p.2)
  scalarMultiplicationContinuous : Continuous (λ p : ℝ × carrier => scalarMultiplication p.1 p.2)

structure DistributionSpace where
  testFunctions : Type u
  testTopology : TopologicalSpace testFunctions
  distributionDual : TopologicalSpace.Dual testFunctions ℝ

structure GeneralizedFunctionEvidence (G : GeneralizedFunctionSpace) where
  additionClosed : G.additionContinuous
  scalarMultiplicationClosed : G.scalarMultiplicationContinuous

def GeneralizedFunctionSpaceClosed (G : GeneralizedFunctionSpace) : Prop :=
  G.additionContinuous ∧ G.scalarMultiplicationContinuous

theorem generalized_function_space_closed_from_evidence (G : GeneralizedFunctionSpace) (E : GeneralizedFunctionEvidence G) :
  GeneralizedFunctionSpaceClosed G := by
  exact And.intro E.additionClosed E.scalarMultiplicationClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse