import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure ApproximationCertificate where
  algorithm : Type u
  approximationRatio : ℚ
  ratioGuaranteeValid : Prop
  polynomialTime : Prop
  ratioGuaranteeValidTerm : ratioGuaranteeValid
  polynomialTimeTerm : polynomialTime

structure ApproximationEvidence (A : ApproximationCertificate) where
  ratioGuaranteeValidClosed : A.ratioGuaranteeValid
  polynomialTimeClosed : A.polynomialTime

def ApproximationClosed (A : ApproximationCertificate) : Prop :=
  A.ratioGuaranteeValid ∧ A.polynomialTime

theorem approximation_closed_from_evidence (A : ApproximationCertificate) (ev : ApproximationEvidence A) : ApproximationClosed A := by
  exact And.intro ev.ratioGuaranteeValidClosed ev.polynomialTimeClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse