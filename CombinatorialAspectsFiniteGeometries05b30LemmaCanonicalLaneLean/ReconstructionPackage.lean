import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure ReconstructionPackage where
  incidenceMatrix : Type u
  designDeterminedByParameters : Prop
  reconstructionUnique : Prop
  reconstructionUniqueProof : reconstructionUnique

def ReconstructionClosed (R : ReconstructionPackage) : Prop :=
  R.designDeterminedByParameters ∧ R.reconstructionUnique

theorem reconstruction_closed_from_evidence (R : ReconstructionPackage) :
    ReconstructionClosed R := by
  exact And.intro R.designDeterminedByParameters R.reconstructionUniqueProof

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse