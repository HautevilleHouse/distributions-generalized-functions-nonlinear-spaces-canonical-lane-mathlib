import DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure GeneticLinkagePackage where
  population : Type u
  loci : ℕ
  recombinationFraction : ℝ
  equilibriumCondition : Prop
  lodScore : ℝ

structure GeneticLinkageEvidence (G : GeneticLinkagePackage) where
  equilibriumConditionClosed : G.equilibriumCondition

def GeneticLinkageClosed (G : GeneticLinkagePackage) : Prop :=
  G.equilibriumCondition

theorem genetic_linkage_closed_from_evidence (G : GeneticLinkagePackage) (E : GeneticLinkageEvidence G) :
    GeneticLinkageClosed G := by
  exact E.equilibriumConditionClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse