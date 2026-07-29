import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure FeasibleSolution where
  encoding : Type u
  constraintsSatisfied : Prop
  objectiveValue : ℕ
  constraintsSatisfiedTerm : constraintsSatisfied

structure FeasibleSolutionEvidence (x : FeasibleSolution) where
  constraintsSatisfiedClosed : x.constraintsSatisfied
  objectiveValueRecorded : True

def FeasibleSolutionClosed (x : FeasibleSolution) : Prop :=
  x.constraintsSatisfied

theorem feasible_solution_closed_from_evidence (x : FeasibleSolution) (e : FeasibleSolutionEvidence x) : FeasibleSolutionClosed x := by
  exact e.constraintsSatisfiedClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse