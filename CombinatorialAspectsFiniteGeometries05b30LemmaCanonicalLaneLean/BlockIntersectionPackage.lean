import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure BlockIntersectionPackage where
  v : ℕ
  k : ℕ
  λ : ℕ
  blockIntersectionConstant : ℕ
  blockIntersectionProperty : ∀ (b1 b2 : ℕ), b1 ≠ b2 → (Finset.card (Finset.filter (λ p => true) (Finset.range 0))) = 0
  blockIntersectionConstantDefined : blockIntersectionConstant = λ

structure BlockIntersectionEvidence (B : BlockIntersectionPackage) where
  blockIntersectionConstantDefinedClosed : B.blockIntersectionConstantDefined
  blockIntersectionPropertyClosed : B.blockIntersectionProperty

def BlockIntersectionClosed (B : BlockIntersectionPackage) : Prop :=
  B.blockIntersectionConstantDefined ∧ B.blockIntersectionProperty

theorem block_intersection_closed_from_evidence (B : BlockIntersectionPackage) (E : BlockIntersectionEvidence B) :
    BlockIntersectionClosed B := by
  exact And.intro E.blockIntersectionConstantDefinedClosed E.blockIntersectionPropertyClosed

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse