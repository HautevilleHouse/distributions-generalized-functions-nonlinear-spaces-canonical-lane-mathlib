import DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean.DistributionTheory

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure SobolevPackage (D : DistributionPackage) where
  exponent : ℝ
  differentiabilityOrder : ℕ
  normDefined : Prop
  completeness : Prop
  embeddingTheorems : Prop

structure SobolevEvidence {D : DistributionPackage} (S : SobolevPackage D) where
  normDefinedClosed : S.normDefined
  completenessClosed : S.completeness
  embeddingTheoremsClosed : S.embeddingTheorems

def SobolevClosed {D : DistributionPackage} (S : SobolevPackage D) : Prop :=
  S.normDefined ∧ S.completeness ∧ S.embeddingTheorems

theorem sobolev_closed_from_evidence {D : DistributionPackage} (S : SobolevPackage D) (E : SobolevEvidence S) :
    SobolevClosed S := by
  exact And.intro E.normDefinedClosed (And.intro E.completenessClosed E.embeddingTheoremsClosed)

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse