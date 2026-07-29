import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure GraphPolyhedronPackage where
  graph : Type u → SimpleGraph ℕ
  matchingPolytope : Prop
  perfectMatchingConditions : Prop
  totalUnimodularIncidence : Prop
  integralityViaUnimodularity : Prop

structure GraphPolyhedronEvidence (G : GraphPolyhedronPackage) where
  matchingPolytopeClosed : G.matchingPolytope
  perfectMatchingConditionsClosed : G.perfectMatchingConditions
  totalUnimodularIncidenceClosed : G.totalUnimodularIncidence
  integralityViaUnimodularityClosed : G.integralityViaUnimodularity

def GraphPolyhedronClosed (G : GraphPolyhedronPackage) : Prop :=
  G.matchingPolytope ∧ G.perfectMatchingConditions ∧ G.totalUnimodularIncidence ∧ G.integralityViaUnimodularity

theorem graph_polyhedron_closed_from_evidence (G : GraphPolyhedronPackage) (E : GraphPolyhedronEvidence G) : GraphPolyhedronClosed G := by
  exact And.intro E.matchingPolytopeClosed
    (And.intro E.perfectMatchingConditionsClosed
      (And.intro E.totalUnimodularIncidenceClosed E.integralityViaUnimodularityClosed))

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse