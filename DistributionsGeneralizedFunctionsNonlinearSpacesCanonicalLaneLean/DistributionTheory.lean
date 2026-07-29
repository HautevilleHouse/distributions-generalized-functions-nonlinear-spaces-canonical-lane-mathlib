import DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure DistributionPackage where
  baseSpace : Type u
  topology : TopologicalSpace baseSpace
  smoothStructure : Prop
  testFunctionSpace : Type v
  distributionSpace : Type w
  pairing : (testFunctionSpace × distributionSpace) → ℝ
  linearity : Prop
  continuity : Prop

structure DistributionEvidence (D : DistributionPackage) where
  linearityClosed : D.linearity
  continuityClosed : D.continuity

def DistributionClosed (D : DistributionPackage) : Prop :=
  D.linearity ∧ D.continuity

theorem distribution_closed_from_evidence (D : DistributionPackage) (E : DistributionEvidence D) :
    DistributionClosed D := by
  exact And.intro E.linearityClosed E.continuityClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse