import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure DesignAdmissibleObject where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  v : ℕ
  k : ℕ
  λ : ℕ
  pairwiseBalanced : ∀ (x y : pointSet), x ≠ y → ∀ (B : blockSet), incidence x B ∧ incidence y B → (λ : ℕ)
  blockSize : ∀ (B : blockSet), ∃! (p : ℕ), ∀ (x : pointSet), incidence x B → p = k
  regularity : ∀ (x : pointSet), ∀ (B : blockSet), incidence x B → ∃! (r : ℕ), r = λ * (v-1) / (k-1)

structure AdmissibleClass where
  object : DesignAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
