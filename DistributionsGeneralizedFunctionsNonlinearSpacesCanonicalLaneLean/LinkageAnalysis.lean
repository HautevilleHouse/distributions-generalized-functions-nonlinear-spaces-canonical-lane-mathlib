import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure LinkageAnalysis where
  loci : Type u
  recombinationFraction : loci → loci → ℝ
  lodScore : ℝ
  linkageConclusion : Prop
  linkageConclusionTerm : linkageConclusion

def LinkageAnalysisClosed (L : LinkageAnalysis) : Prop :=
  L.linkageConclusion

theorem linkage_analysis_closed (L : LinkageAnalysis) : LinkageAnalysisClosed L := by
  exact L.linkageConclusionTerm

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse