import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure ExchangeProperty where
  independentSets : Type u
  baseSet : Type v
  exchangeablePairs : Prop
  augmentationPossible : Prop
  exchangeablePairsTerm : exchangeablePairs
  augmentationPossibleTerm : augmentationPossible

structure ExchangeEvidence (E : ExchangeProperty) where
  exchangeablePairsClosed : E.exchangeablePairs
  augmentationPossibleClosed : E.augmentationPossible

def ExchangeClosed (E : ExchangeProperty) : Prop :=
  E.exchangeablePairs ∧ E.augmentationPossible

theorem exchange_closed_from_evidence (E : ExchangeProperty) (ev : ExchangeEvidence E) : ExchangeClosed E := by
  exact And.intro ev.exchangeablePairsClosed ev.augmentationPossibleClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse