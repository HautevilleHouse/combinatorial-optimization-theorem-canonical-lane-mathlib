import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure LinearProgrammingDualityPackage where
  primalMatrix : Matrix ℝ ℕ ℕ
  primalVector : Vector ℝ ℕ
  dualMatrix : Matrix ℝ ℕ ℕ
  dualVector : Vector ℝ ℕ
  primalFeasible : Prop
  dualFeasible : Prop
  strongDuality : Prop

structure LinearProgrammingDualityEvidence (L : LinearProgrammingDualityPackage) where
  primalFeasibleClosed : L.primalFeasible
  dualFeasibleClosed : L.dualFeasible
  strongDualityClosed : L.strongDuality

def LinearProgrammingDualityClosed (L : LinearProgrammingDualityPackage) : Prop :=
  L.primalFeasible ∧ L.dualFeasible ∧ L.strongDuality

theorem linear_programming_duality_closed_from_evidence
    (L : LinearProgrammingDualityPackage) (E : LinearProgrammingDualityEvidence L) :
    LinearProgrammingDualityClosed L := by
  exact And.intro E.primalFeasibleClosed (And.intro E.dualFeasibleClosed E.strongDualityClosed)

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
