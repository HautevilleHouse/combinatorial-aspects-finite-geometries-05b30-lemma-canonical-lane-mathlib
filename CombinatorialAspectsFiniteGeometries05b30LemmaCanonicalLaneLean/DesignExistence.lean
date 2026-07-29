import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure DesignParameters where
  v : ℕ
  k : ℕ
  λ : ℕ

structure DesignExistencePackage where
  parameters : DesignParameters
  existsBlockDesign : Prop
  incidenceMatrixExists : Prop

structure DesignExistenceEvidence (D : DesignExistencePackage) where
  existsBlockDesignClosed : D.existsBlockDesign
  incidenceMatrixExistsClosed : D.incidenceMatrixExists

def DesignExistenceClosed (D : DesignExistencePackage) : Prop :=
  D.existsBlockDesign ∧ D.incidenceMatrixExists

theorem design_existence_closed_from_evidence (D : DesignExistencePackage)
    (E : DesignExistenceEvidence D) : DesignExistenceClosed D := by
  exact And.intro E.existsBlockDesignClosed E.incidenceMatrixExistsClosed

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
