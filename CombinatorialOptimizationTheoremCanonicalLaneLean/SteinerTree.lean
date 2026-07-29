import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure SteinerTreePackage where
  vertices : Type u
  requiredVertices : Set vertices
  metric : vertices → vertices → ℝ
  treeFound : Prop
  totalCost : ℝ
  optimality : Prop

structure SteinerTreeEvidence (P : SteinerTreePackage) where
  treeFoundClosed : P.treeFound
  optimalityClosed : P.optimality

def SteinerTreeClosed (P : SteinerTreePackage) : Prop :=
  P.treeFound ∧ P.optimality

theorem steiner_tree_closed_from_evidence (P : SteinerTreePackage) (E : SteinerTreeEvidence P) : SteinerTreeClosed P := by
  exact And.intro E.treeFoundClosed E.optimalityClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
