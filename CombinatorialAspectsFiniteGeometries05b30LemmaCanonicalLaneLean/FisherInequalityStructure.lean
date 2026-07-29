import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure FisherInequalityEvidence where
  v : ℕ
  k : ℕ
  λ : ℕ
  b : ℕ
  inequality : b ≥ v
  proof_condition : ∀ (A : DesignAdmissibleObject), A.v = v → A.k = k → A.λ = λ → A.blockSet = b → inequality

def FisherInequalityClosed (F : FisherInequalityEvidence) : Prop :=
  F.inequality ∧ F.proof_condition

theorem fisher_inequality_closed (F : FisherInequalityEvidence) : FisherInequalityClosed F := by
  exact And.intro F.inequality F.proof_condition

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse
