import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure IntegerProgrammingPackage where
  coefficientMatrix : Matrix ℤ ℕ ℕ
  rightHandSide : Vector ℤ ℕ
  objective : Vector ℤ ℕ
  feasibleSolutions : Set (Vector ℤ ℕ)
  isBounded : Prop
  optimalValueExists : Prop
  cuttingPlaneConverges : Prop

structure IntegerProgrammingEvidence (I : IntegerProgrammingPackage) where
  isBoundedClosed : I.isBounded
  optimalValueExistsClosed : I.optimalValueExists
  cuttingPlaneConvergesClosed : I.cuttingPlaneConverges

def IntegerProgrammingClosed (I : IntegerProgrammingPackage) : Prop :=
  I.isBounded ∧ I.optimalValueExists ∧ I.cuttingPlaneConverges

theorem integer_programming_closed_from_evidence
    (I : IntegerProgrammingPackage) (E : IntegerProgrammingEvidence I) :
    IntegerProgrammingClosed I := by
  exact And.intro E.isBoundedClosed (And.intro E.optimalValueExistsClosed E.cuttingPlaneConvergesClosed)

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
