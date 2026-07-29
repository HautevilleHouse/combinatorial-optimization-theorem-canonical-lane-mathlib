import canonicalLaneMathlib.AdmissibleClass
import CombinatorialOptimizationTheoremCanonicalLaneLean.GraphColoring
import CombinatorialOptimizationTheoremCanonicalLaneLean.CliqueCover
import CombinatorialOptimizationTheoremCanonicalLaneLean.SteinerTree

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

def ConstrainedCombinatorialOptimizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatorial_optimization_endgame (A : AdmissibleClass) :
    ConstrainedCombinatorialOptimizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
