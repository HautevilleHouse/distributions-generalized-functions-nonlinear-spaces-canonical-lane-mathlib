import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure PhylogeneticsPackage where
  species : Type u
  treeTopology : Type v
  branchLengths : Prop
  substitutionModel : Type w
  likelihood : Prop
  maximumParsimony : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  likelihoodClosed : P.likelihood
  maximumParsimonyClosed : P.maximumParsimony

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.likelihood ∧ P.maximumParsimony

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.likelihoodClosed E.maximumParsimonyClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse