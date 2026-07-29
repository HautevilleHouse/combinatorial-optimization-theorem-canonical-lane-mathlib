import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure FeasibleRegionPackage where
  decisionSpace : Type
  constraints : List (decisionSpace → Prop)
  objective : decisionSpace → ℝ
  feasibleSet : Set decisionSpace
  isCompact : Prop
  feasibleNonempty : Prop

structure FeasibleRegionEvidence (F : FeasibleRegionPackage) where
  isCompactClosed : F.isCompact
  feasibleNonemptyClosed : F.feasibleNonempty

def FeasibleRegionClosed (F : FeasibleRegionPackage) : Prop :=
  F.isCompact ∧ F.feasibleNonempty

theorem feasible_region_closed_from_evidence (F : FeasibleRegionPackage) (E : FeasibleRegionEvidence F) :
    FeasibleRegionClosed F := by
  exact And.intro E.isCompactClosed E.feasibleNonemptyClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
