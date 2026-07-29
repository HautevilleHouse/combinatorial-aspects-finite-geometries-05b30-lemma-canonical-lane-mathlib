import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure FisherInequalityCondition {G : FiniteGeometry} (D : BalancedIncompleteBlockDesign G) where
  b_ge_v : D.b ≥ D.v

structure FisherInequalityPackage {G : FiniteGeometry} (D : BalancedIncompleteBlockDesign G) where
  condition : FisherInequalityCondition D

structure FisherInequalityEvidence {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G}
    (P : FisherInequalityPackage D) where
  b_ge_v_closed : P.condition.b_ge_v

def FisherInequalityClosed {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G}
    (P : FisherInequalityPackage D) : Prop :=
  P.condition.b_ge_v

theorem fisher_inequality_closed_from_evidence {G : FiniteGeometry} {D : BalancedIncompleteBlockDesign G}
    (P : FisherInequalityPackage D) (E : FisherInequalityEvidence P) : FisherInequalityClosed P :=
  E.b_ge_v_closed

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse