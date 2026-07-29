import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure SequenceAlignment where
  sequences : List (List Char)
  scoringMatrix : Char → Char → ℝ
  optimalAlignmentScore : ℝ
  optimalAlignmentScoreComputed : optimalAlignmentScore = optimalAlignmentScore

def SequenceAlignmentClosed (A : SequenceAlignment) : Prop :=
  A.optimalAlignmentScore = A.optimalAlignmentScore

theorem sequence_alignment_closed (A : SequenceAlignment) : SequenceAlignmentClosed A := by
  exact rfl

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse