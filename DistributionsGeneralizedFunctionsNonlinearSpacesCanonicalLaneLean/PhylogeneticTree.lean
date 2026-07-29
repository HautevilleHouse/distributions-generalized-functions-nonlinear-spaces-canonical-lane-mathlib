import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure PhylogeneticTree where
  leafLabels : Type u
  treeTopology : Type v
  branchLengths : treeTopology → ℝ
  likelihood : Prop
  likelihoodTerm : likelihood

def PhylogeneticTreeClosed (T : PhylogeneticTree) : Prop :=
  T.likelihood

theorem phylogenetic_tree_closed (T : PhylogeneticTree) : PhylogeneticTreeClosed T := by
  exact T.likelihoodTerm

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse