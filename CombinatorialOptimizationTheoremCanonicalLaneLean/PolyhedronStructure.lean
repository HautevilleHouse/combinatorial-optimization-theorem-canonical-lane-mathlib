import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure PolyhedronPackage where
  ambientSpace : Type u
  dimension : ℕ
  linearInequalities : List (ambientSpace → ℝ)
  integerPoints : Set ambientSpace
  vertexEnumeration : List ambientSpace
  facetDescription : Prop
  boundedness : Prop
  integrality : Prop

structure PolyhedronEvidence (P : PolyhedronPackage) where
  vertexEnumerationClosed : P.vertexEnumeration ≠ []
  facetDescriptionClosed : P.facetDescription
  boundednessClosed : P.boundedness
  integralityClosed : P.integrality

def PolyhedronClosed (P : PolyhedronPackage) : Prop :=
  P.vertexEnumeration ≠ [] ∧ P.facetDescription ∧ P.boundedness ∧ P.integrality

theorem polyhedron_closed_from_evidence (P : PolyhedronPackage) (E : PolyhedronEvidence P) : PolyhedronClosed P := by
  exact And.intro E.vertexEnumerationClosed
    (And.intro E.facetDescriptionClosed
      (And.intro E.boundednessClosed E.integralityClosed))

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse