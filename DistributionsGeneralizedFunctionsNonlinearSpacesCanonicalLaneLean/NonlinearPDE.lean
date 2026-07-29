import DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure NonlinearPDEPackage {D : DistributionPackage} (S : SobolevPackage D) where
  equation : Type u
  solutionSpace : Type v
  wellPosedness : Prop
  regularity : Prop
  stability : Prop

structure NonlinearPDEEvidence {D : DistributionPackage} {S : SobolevPackage D} (N : NonlinearPDEPackage S) where
  wellPosednessClosed : N.wellPosedness
  regularityClosed : N.regularity
  stabilityClosed : N.stability

def NonlinearPDEClosed {D : DistributionPackage} {S : SobolevPackage D} (N : NonlinearPDEPackage S) : Prop :=
  N.wellPosedness ∧ N.regularity ∧ N.stability

theorem nonlinear_pde_closed_from_evidence {D : DistributionPackage} {S : SobolevPackage D} (N : NonlinearPDEPackage S) (E : NonlinearPDEEvidence N) :
    NonlinearPDEClosed N := by
  exact And.intro E.wellPosednessClosed (And.intro E.regularityClosed E.stabilityClosed)

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse