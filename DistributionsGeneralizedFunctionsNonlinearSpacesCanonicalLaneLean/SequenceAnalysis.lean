import DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure SequencePackage where
  alphabet : Type u
  sequences : List (List ℕ)
  alignment : Prop
  substitutionModel : Type v
  distanceMatrix : Type w

structure SequenceEvidence (S : SequencePackage) where
  alignmentClosed : S.alignment

def SequenceClosed (S : SequencePackage) : Prop :=
  S.alignment

theorem sequence_closed_from_evidence (S : SequencePackage) (E : SequenceEvidence S) :
    SequenceClosed S := by
  exact E.alignmentClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse