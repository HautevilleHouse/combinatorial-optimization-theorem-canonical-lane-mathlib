import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure MaxFlowCutPackage where
  graph : Graph ℕ
  source : ℕ
  sink : ℕ
  capacities : ℕ → ℕ → ℝ
  maxFlowValue : ℝ
  minCutCapacity : ℝ
  maxFlowMinCutEquality : Prop

structure MaxFlowCutEvidence (M : MaxFlowCutPackage) where
  maxFlowMinCutEqualityClosed : M.maxFlowMinCutEquality

def MaxFlowCutClosed (M : MaxFlowCutPackage) : Prop :=
  M.maxFlowMinCutEquality

theorem max_flow_cut_closed_from_evidence (M : MaxFlowCutPackage) (E : MaxFlowCutEvidence M) :
    MaxFlowCutClosed M := by
  exact E.maxFlowMinCutEqualityClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
