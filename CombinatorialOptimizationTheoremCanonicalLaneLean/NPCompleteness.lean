import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure NPCompleteness where
  decisionProblem : Type u
  isNPComplete : Prop
  hardnessEstablished : Prop
  membershipInNP : Prop
  hardnessEstablishedTerm : hardnessEstablished
  membershipInNPTerm : membershipInNP

structure NPCompletenessEvidence (N : NPCompleteness) where
  hardnessEstablishedClosed : N.hardnessEstablished
  membershipInNPClosed : N.membershipInNP

def NPCompletenessClosed (N : NPCompleteness) : Prop :=
  N.hardnessEstablished ∧ N.membershipInNP

theorem np_completeness_closed_from_evidence (N : NPCompleteness) (ev : NPCompletenessEvidence N) : NPCompletenessClosed N := by
  exact And.intro ev.hardnessEstablishedClosed ev.membershipInNPClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse