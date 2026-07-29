import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure MatroidPackage where
  groundSet : Type
  independentSets : Type
  rankFunction : Type
  exchangeProperty : Prop
  greedyAlgorithmOptimal : Prop
  matroidIntersection : Prop

structure MatroidEvidence (P : MatroidPackage) where
  exchangePropertyClosed : P.exchangeProperty
  greedyAlgorithmOptimalClosed : P.greedyAlgorithmOptimal
  matroidIntersectionClosed : P.matroidIntersection

def MatroidClosed (P : MatroidPackage) : Prop :=
  P.exchangeProperty ∧ P.greedyAlgorithmOptimal ∧ P.matroidIntersection

theorem matroid_closed_from_evidence (P : MatroidPackage) (E : MatroidEvidence P) : MatroidClosed P := by
  exact And.intro E.exchangePropertyClosed (And.intro E.greedyAlgorithmOptimalClosed E.matroidIntersectionClosed)

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse