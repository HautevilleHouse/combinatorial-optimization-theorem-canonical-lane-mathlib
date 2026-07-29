import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure FlowNetwork where
  vertices : Type u
  edges : Type v
  capacity : edges → ℕ
  source : vertices
  sink : vertices
  flow : edges → ℕ
  capacityConstraint : Prop
  flowConservation : Prop
  maxFlow : Prop
  minCut : Set edges
  cutCapacity : ℕ
  minCutProperty : Prop

structure MaxFlowMinCutEvidence (N : FlowNetwork) where
  capacityConstraintClosed : N.capacityConstraint
  flowConservationClosed : N.flowConservation
  maxFlowClosed : N.maxFlow
  minCutPropertyClosed : N.minCutProperty
  flowEqualsCut : N.flowSum = N.cutCapacity

def MaxFlowMinCutClosed (N : FlowNetwork) : Prop :=
  N.capacityConstraint ∧ N.flowConservation ∧ N.maxFlow ∧ N.minCutProperty ∧ N.flowSum = N.cutCapacity

theorem max_flow_min_cut_closed_from_evidence (N : FlowNetwork) (E : MaxFlowMinCutEvidence N) :
    MaxFlowMinCutClosed N := by
  exact And.intro E.capacityConstraintClosed (And.intro E.flowConservationClosed (And.intro E.maxFlowClosed (And.intro E.minCutPropertyClosed E.flowEqualsCut)))

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse