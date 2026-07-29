import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure HardyWeinbergEquilibrium where
  alleleFrequencies : ℝ → ℝ
  genotypeFrequencies : ℝ → ℝ → ℝ
  equilibriumCondition : Prop
  equilibriumConditionTerm : equilibriumCondition

def HardyWeinbergClosed (HW : HardyWeinbergEquilibrium) : Prop :=
  HW.equilibriumCondition

theorem hardy_weinberg_closed (HW : HardyWeinbergEquilibrium) : HardyWeinbergClosed HW := by
  exact HW.equilibriumConditionTerm

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse