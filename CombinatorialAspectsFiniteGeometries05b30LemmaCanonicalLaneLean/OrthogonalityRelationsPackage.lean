import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure OrthogonalityRelationsPackage where
  incidenceMatrixRows : ℕ
  incidenceMatrixCols : ℕ
  rowOrthogonality : Prop
  colOrthogonality : Prop
  orthogonalityProof : rowOrthogonality ∧ colOrthogonality

data OrthogonalityClosed (O : OrthogonalityRelationsPackage) : Prop :=
  | mk (hRow : O.rowOrthogonality) (hCol : O.colOrthogonality)

theorem orthogonality_closed_from_evidence (O : OrthogonalityRelationsPackage) :
    OrthogonalityClosed O := by
  exact OrthogonalityClosed.mk O.orthogonalityProof.1 O.orthogonalityProof.2

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse