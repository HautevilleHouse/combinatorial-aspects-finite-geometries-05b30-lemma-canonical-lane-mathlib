import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure FiniteField where
  q : ℕ
  primePower : Prop
  fieldOperations : Prop

structure AffinePlane (F : FiniteField) where
  pointSet : F.fieldOperations → Prop
  lineSet : F.fieldOperations → Prop
  incidenceAxioms : Prop

structure ProjectivePlane (F : FiniteField) where
  pointSet : F.fieldOperations → Prop
  lineSet : F.fieldOperations → Prop
  incidenceAxioms : Prop

def affinePlaneDesign (F : FiniteField) (A : AffinePlane F) : DesignExistencePackage :=
  { parameters := { v := F.q ^ 2, k := F.q, λ := 1 },
    existsBlockDesign := A.incidenceAxioms,
    incidenceMatrixExists := A.incidenceAxioms
  }

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
