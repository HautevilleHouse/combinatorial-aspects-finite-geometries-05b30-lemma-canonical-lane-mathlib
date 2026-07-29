import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure BlockIntersectionData {G : FiniteGeometry} (D : BalancedIncompleteBlockDesign G) where
  incidenceMatrix : Matrix (Fin (Fintype.card G.pointSet)) (Fin (Fintype.card G.blockSet)) ℕ
  productFormula : Matrix (Fin (Fintype.card G.pointSet)) (Fin (Fintype.card G.pointSet)) ℕ
  intersectionNumbers : Finset ℕ
  jordanForm : Prop

structure BlockIntersectionPackage {G : FiniteGeometry} (D : BalancedIncompleteBlockDesign G) where
  intersectionData : BlockIntersectionData D

structure BlockIntersectionEvidence {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G}
    (P : BlockIntersectionPackage D) where
  productFormulaClosed : P.intersectionData.productFormula = (λ i j => if i = j then D.k else D.lambda)
  jordanFormClosed : P.intersectionData.jordanForm

def BlockIntersectionClosed {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G}
    (P : BlockIntersectionPackage D) : Prop :=
  P.intersectionData.productFormula = (λ i j => if i = j then D.k else D.lambda) ∧
  P.intersectionData.jordanForm

theorem block_intersection_closed_from_evidence {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G}
    (P : BlockIntersectionPackage D) (E : BlockIntersectionEvidence P) : BlockIntersectionClosed P :=
  And.intro E.productFormulaClosed E.jordanFormClosed

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse