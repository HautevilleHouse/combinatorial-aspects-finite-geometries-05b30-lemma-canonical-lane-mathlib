import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure FiniteGeometrySpace where
  pointSet : Type
  lineSet : Type
  incidence : pointSet → lineSet → Prop

structure FiniteGeometryAdmittedObject where
  space : FiniteGeometrySpace
  finiteOrder : Prop
  blockDesignSatisfied : Prop
  conclusion : blockDesignSatisfied

def FiniteGeometryWitnessClosed (O : FiniteGeometryAdmittedObject) : Prop :=
  O.blockDesignSatisfied

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
