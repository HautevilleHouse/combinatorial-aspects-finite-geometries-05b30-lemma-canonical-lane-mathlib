import .AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure FiniteProjectivePlane where
  pointSet : Type
  lineSet : Type
  incidence : pointSet → lineSet → Prop
  order : ℕ
  everyTwoPointsUniqueLine : Prop
  everyTwoLinesUniquePoint : Prop
  atLeastThreePointsPerLine : Prop
  finiteOrder : order ≥ 2

theorem desargues_holds (π : FiniteProjectivePlane) : Prop :=
  ∀ (A B C A' B' C' : π.pointSet),
    (∀ l, π.incidence A l → π.incidence A' l) →
    (∀ m, π.incidence B m → π.incidence B' m) →
    (∀ n, π.incidence C n → π.incidence C' n) →
    (collinear A B C ∧ collinear A' B' C') →
    collinear (intersection (line A B) (line A' B'))
              (intersection (line B C) (line B' C'))
              (intersection (line C A) (line C' A'))

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse