import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure SteinerTripleSystem {G : FiniteGeometry} (D : BalancedIncompleteBlockDesign G) where
  k_eq_three : D.k = 3
  lambda_eq_one : D.lambda = 1
  v_eq_one_mod_six : Fintype.card G.pointSet % 6 = 1 ∨ Fintype.card G.pointSet % 6 = 3
  blockPartition : Finset (Finset G.pointSet)

structure SteinerTriplePackage {G : FiniteGeometry} (D : BalancedIncompleteBlockDesign G) where
  sts : SteinerTripleSystem D

structure SteinerTripleEvidence {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G} (P : SteinerTriplePackage D) where
  k_eq_three_closed : P.sts.k_eq_three
  lambda_eq_one_closed : P.sts.lambda_eq_one
  v_mod_six_closed : P.sts.v_eq_one_mod_six

def SteinerTripleClosed {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G} (P : SteinerTriplePackage D) : Prop :=
  P.sts.k_eq_three ∧ P.sts.lambda_eq_one ∧ P.sts.v_eq_one_mod_six

theorem steiner_triple_closed_from_evidence {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G}
    (P : SteinerTriplePackage D) (E : SteinerTripleEvidence P) : SteinerTripleClosed P :=
  And.intro E.k_eq_three_closed (And.intro E.lambda_eq_one_closed E.v_mod_six_closed)

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse