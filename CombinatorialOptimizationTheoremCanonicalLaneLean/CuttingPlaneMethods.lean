import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationTheoremCanonicalLaneLean

structure CuttingPlaneMethod (ProblemType : Type u) where
  instance : ProblemType
  cuttingPlaneOracle : Type v
  separationOracle : Type w
  convergenceGuarantee : Prop
  cutGenerationStops : Prop

structure CuttingPlaneMethodEvidence {ProblemType : Type u} (C : CuttingPlaneMethod ProblemType) where
  convergenceGuaranteeClosed : C.convergenceGuarantee
  cutGenerationStopsClosed : C.cutGenerationStops

def CuttingPlaneMethodClosed {ProblemType : Type u} (C : CuttingPlaneMethod ProblemType) : Prop :=
  C.convergenceGuarantee ∧ C.cutGenerationStops

theorem cutting_plane_method_closed_from_evidence {ProblemType : Type u}
    (C : CuttingPlaneMethod ProblemType) (E : CuttingPlaneMethodEvidence C) :
    CuttingPlaneMethodClosed C := by
  exact And.intro E.convergenceGuaranteeClosed E.cutGenerationStopsClosed

end CombinatorialOptimizationTheoremCanonicalLaneLean
end HautevilleHouse