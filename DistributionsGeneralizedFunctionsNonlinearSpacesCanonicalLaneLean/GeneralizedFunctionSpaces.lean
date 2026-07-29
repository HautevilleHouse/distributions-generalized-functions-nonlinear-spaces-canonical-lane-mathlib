import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure GeneralizedFunctionSpace where
  testFunctionSpace : Type u
  distributionSpace : Type v
  pairing : testFunctionSpace → distributionSpace → ℝ
  continuity : Prop
  linearity : Prop
  pairingWellDefined : Prop
  continuityClosed : continuity
  linearityClosed : linearity
  pairingWellDefinedClosed : pairingWellDefined

def GeneralizedFunctionSpaceClosed (G : GeneralizedFunctionSpace) : Prop :=
  G.continuity ∧ G.linearity ∧ G.pairingWellDefined

theorem generalized_function_space_closed (G : GeneralizedFunctionSpace) : GeneralizedFunctionSpaceClosed G := by
  exact And.intro G.continuityClosed (And.intro G.linearityClosed G.pairingWellDefinedClosed)

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse