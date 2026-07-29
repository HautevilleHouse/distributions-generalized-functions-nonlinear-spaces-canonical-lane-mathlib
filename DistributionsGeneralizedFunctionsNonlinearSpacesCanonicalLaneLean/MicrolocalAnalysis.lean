import DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean.DistributionTheory

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure MicrolocalPackage (D : DistributionPackage) where
  wavefrontSet : Type u
  pseudodifferentialOperators : Type v
  regularityMicro : Prop
  propagation : Prop

structure MicrolocalEvidence {D : DistributionPackage} (M : MicrolocalPackage D) where
  regularityMicroClosed : M.regularityMicro
  propagationClosed : M.propagation

def MicrolocalClosed {D : DistributionPackage} (M : MicrolocalPackage D) : Prop :=
  M.regularityMicro ∧ M.propagation

theorem microlocal_closed_from_evidence {D : DistributionPackage} (M : MicrolocalPackage D) (E : MicrolocalEvidence M) :
    MicrolocalClosed M := by
  exact And.intro E.regularityMicroClosed E.propagationClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse