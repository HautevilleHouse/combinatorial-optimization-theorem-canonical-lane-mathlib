import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OptimizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
