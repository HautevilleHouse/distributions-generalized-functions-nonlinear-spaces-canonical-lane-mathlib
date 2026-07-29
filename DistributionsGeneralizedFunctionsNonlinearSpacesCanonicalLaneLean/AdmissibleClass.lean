import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure GeneticalAdmittedObject where
  object : Type
  equilibriumCondition : Prop
  linkageEvidence : Prop
  sequenceIdentity : Prop
  phylogeneticTree : Prop
  conclusion : equilibriumCondition ∧ linkageEvidence ∧ sequenceIdentity ∧ phylogeneticTree

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse