import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure ApproximationPackage where
  problemType : Type
  approximationRatio : Rat
  polynomialTime : Prop
  performanceGuarantee : Prop
  hardnessResult : Prop

structure ApproximationEvidence (P : ApproximationPackage) where
  polynomialTimeClosed : P.polynomialTime
  performanceGuaranteeClosed : P.performanceGuarantee
  hardnessResultClosed : P.hardnessResult

def ApproximationClosed (P : ApproximationPackage) : Prop :=
  P.polynomialTime ∧ P.performanceGuarantee ∧ P.hardnessResult

theorem approximation_closed_from_evidence (P : ApproximationPackage) (E : ApproximationEvidence P) : ApproximationClosed P := by
  exact And.intro E.polynomialTimeClosed (And.intro E.performanceGuaranteeClosed E.hardnessResultClosed)

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse