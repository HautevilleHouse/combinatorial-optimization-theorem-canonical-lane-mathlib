import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure MatchingPackage where
  bipartiteGraph : Type
  matching : Type
  perfectMatching : Prop
  maximumMatching : Prop
  hallCondition : Prop
  matchingSize : Nat

structure MatchingEvidence (P : MatchingPackage) where
  perfectMatchingClosed : P.perfectMatching
  maximumMatchingClosed : P.maximumMatching
  hallConditionClosed : P.hallCondition

def MatchingClosed (P : MatchingPackage) : Prop :=
  P.perfectMatching ∧ P.maximumMatching ∧ P.hallCondition

theorem matching_closed_from_evidence (P : MatchingPackage) (E : MatchingEvidence P) : MatchingClosed P := by
  exact And.intro E.perfectMatchingClosed (And.intro E.maximumMatchingClosed E.hallConditionClosed)

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse