import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure OrthogonalArrayParameters where
  n : ℕ
  k : ℕ
  s : ℕ
  t : ℕ

structure OrthogonalArrayPackage where
  params : OrthogonalArrayParameters
  arrayExists : Prop
  strengthTProperty : Prop

structure OrthogonalArrayEvidence (O : OrthogonalArrayPackage) where
  arrayExistsClosed : O.arrayExists
  strengthTPropertyClosed : O.strengthTProperty

def OrthogonalArrayClosed (O : OrthogonalArrayPackage) : Prop :=
  O.arrayExists ∧ O.strengthTProperty

theorem orthogonal_array_closed_from_evidence (O : OrthogonalArrayPackage)
    (E : OrthogonalArrayEvidence O) : OrthogonalArrayClosed O := by
  exact And.intro E.arrayExistsClosed E.strengthTPropertyClosed

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
