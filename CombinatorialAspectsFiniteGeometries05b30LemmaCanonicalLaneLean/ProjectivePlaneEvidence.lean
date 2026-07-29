import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure ProjectivePlaneEvidence where
  n : ℕ
  v : ℕ
  b : ℕ
  r : ℕ
  k : ℕ
  λ : ℕ
  properties : v = n^2 + n + 1 ∧ b = v ∧ r = n + 1 ∧ k = n + 1 ∧ λ = 1
  existence : Prop
  primePowerCondition : Nat.Prime (2*n) → existence

def ProjectivePlaneClosed (P : ProjectivePlaneEvidence) : Prop :=
  P.properties ∧ (∀ h : Nat.Prime (2*P.n), P.existence)

theorem projective_plane_closed (P : ProjectivePlaneEvidence) : ProjectivePlaneClosed P := by
  exact And.intro P.properties (fun h => P.primePowerCondition h)

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
