import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure LPRoundingScheme where
  lpRelaxation : Type u
  roundingFunction : Type v
  integralityGap : Prop
  roundingGuarantee : Prop
  lpSolvable : Prop

structure LPRoundingSchemeEvidence (S : LPRoundingScheme) where
  integralityGapClosed : S.integralityGap
  roundingGuaranteeClosed : S.roundingGuarantee
  lpSolvableClosed : S.lpSolvable

def LPRoundingSchemeClosed (S : LPRoundingScheme) : Prop :=
  S.integralityGap ∧ S.roundingGuarantee ∧ S.lpSolvable

theorem lp_rounding_scheme_closed_from_evidence (S : LPRoundingScheme) (E : LPRoundingSchemeEvidence S) :
    LPRoundingSchemeClosed S := by
  exact And.intro E.integralityGapClosed (And.intro E.roundingGuaranteeClosed E.lpSolvableClosed)

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse