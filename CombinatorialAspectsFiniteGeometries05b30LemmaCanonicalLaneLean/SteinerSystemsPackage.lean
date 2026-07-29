import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure SteinerSystemEvidence where
  v : ℕ
  k : ℕ
  t : ℕ
  isSteiner : ∀ (subset : Finset (Fin v)), subset.card = t → ∃! (B : Finset (Fin v)), B.card = k ∧ subset ⊆ B
  countBlocks : ℕ
  formula : countBlocks = Nat.choose v t / Nat.choose k t

def SteinerSystemClosed (S : SteinerSystemEvidence) : Prop :=
  S.isSteiner ∧ S.formula

theorem steiner_system_closed (S : SteinerSystemEvidence) : SteinerSystemClosed S := by
  exact And.intro S.isSteiner S.formula

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
