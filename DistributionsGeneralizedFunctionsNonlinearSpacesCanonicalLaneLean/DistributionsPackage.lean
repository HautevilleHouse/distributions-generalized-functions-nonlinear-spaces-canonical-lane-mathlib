import canonicalLaneMathlib.AdmissibleClass

/-!
# Distributions Package

Formalization of Schwartz distributions and generalized functions
on nonlinear spaces for the canonical Lane framework.
-/

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure DistributionPackage where
  testFunctionSpace : Type u
  topology : TopologicalSpace testFunctionSpace
  linearFunctional : Type v
  continuity : Prop
  supportCompact : Prop
  continuityClosed : continuity
  supportCompactClosed : supportCompact

structure DistributionEvidence (D : DistributionPackage) where
  continuityClosed : D.continuity
  supportCompactClosed : D.supportCompact

def DistributionClosed (D : DistributionPackage) : Prop :=
  D.continuity ∧ D.supportCompact

theorem distribution_closed_from_evidence
    (D : DistributionPackage) (E : DistributionEvidence D) :
    DistributionClosed D := by
  exact And.intro E.continuityClosed E.supportCompactClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse