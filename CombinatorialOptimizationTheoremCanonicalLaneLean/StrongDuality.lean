import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure StrongDualityPackage where
  primalProblem : Prop
  dualProblem : Prop
  optimalValueEquality : Prop
  noDualityGap : Prop
  complementarySlackness : Prop

structure StrongDualityEvidence (S : StrongDualityPackage) where
  primalProblemClosed : S.primalProblem
  dualProblemClosed : S.dualProblem
  optimalValueEqualityClosed : S.optimalValueEquality
  noDualityGapClosed : S.noDualityGap
  complementarySlacknessClosed : S.complementarySlackness

def StrongDualityClosed (S : StrongDualityPackage) : Prop :=
  S.primalProblem ∧ S.dualProblem ∧ S.optimalValueEquality ∧ S.noDualityGap ∧ S.complementarySlackness

theorem strong_duality_closed_from_evidence (S : StrongDualityPackage) (E : StrongDualityEvidence S) : StrongDualityClosed S := by
  exact And.intro E.primalProblemClosed
    (And.intro E.dualProblemClosed
      (And.intro E.optimalValueEqualityClosed
        (And.intro E.noDualityGapClosed E.complementarySlacknessClosed)))

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse