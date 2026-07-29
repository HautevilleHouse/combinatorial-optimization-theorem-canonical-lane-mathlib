import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure LPBound where
  linearProgrammingRelaxation : Type u
  integralityGap : ℕ
  lowerBoundValid : Prop
  upperBoundValid : Prop
  lowerBoundValidTerm : lowerBoundValid
  upperBoundValidTerm : upperBoundValid

structure LPBoundEvidence (L : LPBound) where
  lowerBoundValidClosed : L.lowerBoundValid
  upperBoundValidClosed : L.upperBoundValid

def LPBoundClosed (L : LPBound) : Prop :=
  L.lowerBoundValid ∧ L.upperBoundValid

theorem lp_bound_closed_from_evidence (L : LPBound) (ev : LPBoundEvidence L) : LPBoundClosed L := by
  exact And.intro ev.lowerBoundValidClosed ev.upperBoundValidClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse