import .AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure BlockDesignClass where
  design : DesignStructure
  parameterAdmissible : Prop
  parameterSpaceClosed : Prop
  evidence : parameterAdmissible ∧ parameterSpaceClosed

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse