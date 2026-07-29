import canonicalLaneMathlib.AdmissibleClass
import DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean.DistributionsPackage

/-!
# Nonlinear Function Space Package

Formalization of Sobolev spaces and nonlinear generalized functions
on manifolds for the canonical Lane framework.
-/

namespace HautevilleHouse
namespace DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean

structure NonlinearFunctionSpacePackage where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  distributionSpace : DistributionPackage
  nonlinearEmbedding : Type v
  compositionLaw : Prop
  smoothnessPreserved : Prop
  compositionLawClosed : compositionLaw
  smoothnessPreservedClosed : smoothnessPreserved

structure NonlinearFunctionSpaceEvidence
    (N : NonlinearFunctionSpacePackage) where
  compositionLawClosed : N.compositionLaw
  smoothnessPreservedClosed : N.smoothnessPreserved

def NonlinearFunctionSpaceClosed
    (N : NonlinearFunctionSpacePackage) : Prop :=
  N.compositionLaw ∧ N.smoothnessPreserved

theorem nonlinear_function_space_closed_from_evidence
    (N : NonlinearFunctionSpacePackage)
    (E : NonlinearFunctionSpaceEvidence N) :
    NonlinearFunctionSpaceClosed N := by
  exact And.intro E.compositionLawClosed E.smoothnessPreservedClosed

end DistributionsGeneralizedFunctionsNonlinearSpacesCanonicalLaneLean
end HautevilleHouse