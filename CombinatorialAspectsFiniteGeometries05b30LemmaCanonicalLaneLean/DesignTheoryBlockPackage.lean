import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure FiniteGeometry where
  pointSet : Type u
  blockSet : Type v
  incidence : pointSet → blockSet → Prop
  finitePoints : Fintype pointSet
  finiteBlocks : Fintype blockSet

structure BalancedIncompleteBlockDesign (G : FiniteGeometry) where
  lambda : ℕ
  k : ℕ
  v : ℕ
  b : ℕ
  regular : ∀ (p : G.pointSet), Finset.card (Finset.filter (λ b => G.incidence p b) Finset.univ) = k
  balanced : ∀ (p q : G.pointSet), p ≠ q → Finset.card (Finset.filter (λ b => G.incidence p b ∧ G.incidence q b) Finset.univ) = lambda
  size_v : Fintype.card G.pointSet = v
  size_b : Fintype.card G.blockSet = b
  v_pos : v > 0
  b_pos : b > 0
  k_pos : k > 0
  lambda_pos : lambda > 0

structure BlockDesignPackage where
  geometry : FiniteGeometry
  design : BalancedIncompleteBlockDesign geometry

structure BlockDesignEvidence (P : BlockDesignPackage) where
  regularClosed : P.design.regular
  balancedClosed : P.design.balanced
  size_vClosed : P.design.size_v
  size_bClosed : P.design.size_b

def BlockDesignClosed (P : BlockDesignPackage) : Prop :=
  P.design.regular ∧ P.design.balanced ∧ P.design.size_v ∧ P.design.size_b

theorem block_design_closed_from_evidence (P : BlockDesignPackage) (E : BlockDesignEvidence P) :
    BlockDesignClosed P :=
  And.intro E.regularClosed (And.intro E.balancedClosed (And.intro E.size_vClosed E.size_bClosed))

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse