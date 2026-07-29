import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure DifferenceSetPackage where
  group : Type u
  multiplier : ℕ
  parameters : (v : ℕ) × (k : ℕ) × (λ : ℕ)
  differenceSetCondition : Prop
  multiplierCondition : Prop

structure DifferenceSetEvidence (D : DifferenceSetPackage) where
  differenceSetClosed : D.differenceSetCondition
  multiplierClosed : D.multiplierCondition

def DifferenceSetClosed (D : DifferenceSetPackage) : Prop :=
  D.differenceSetCondition ∧ D.multiplierCondition

theorem difference_set_closed_from_evidence (D : DifferenceSetPackage)
    (E : DifferenceSetEvidence D) : DifferenceSetClosed D := by
  exact And.intro E.differenceSetClosed E.multiplierClosed

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
