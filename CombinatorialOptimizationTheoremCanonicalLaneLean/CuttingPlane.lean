import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure CuttingPlanePackage where
  initialRelaxation : Prop
  separationOracle : Prop
  validInequality : Prop
  finiteConvergence : Prop

structure CuttingPlaneEvidence (C : CuttingPlanePackage) where
  initialRelaxationClosed : C.initialRelaxation
  separationOracleClosed : C.separationOracle
  validInequalityClosed : C.validInequality
  finiteConvergenceClosed : C.finiteConvergence

def CuttingPlaneClosed (C : CuttingPlanePackage) : Prop :=
  C.initialRelaxation ∧ C.separationOracle ∧ C.validInequality ∧ C.finiteConvergence

theorem cutting_plane_closed_from_evidence (C : CuttingPlanePackage) (E : CuttingPlaneEvidence C) : CuttingPlaneClosed C := by
  exact And.intro E.initialRelaxationClosed
    (And.intro E.separationOracleClosed
      (And.intro E.validInequalityClosed E.finiteConvergenceClosed))

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse