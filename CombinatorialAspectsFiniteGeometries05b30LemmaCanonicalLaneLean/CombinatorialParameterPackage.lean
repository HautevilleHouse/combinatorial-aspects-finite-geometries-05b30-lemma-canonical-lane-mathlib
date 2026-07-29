import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure CombinatorialParameterPackage where
  v : ℕ
  k : ℕ
  λ : ℕ
  b : ℕ
  r : ℕ
  necessaryConditions : v > 0 ∧ k > 0 ∧ λ > 0 ∧ b > 0 ∧ r > 0
  basicRelation : v * r = b * k
  lambdaRelation : λ * (v - 1) = r * (k - 1)
  fisherInequality : b ≥ v

structure CombinatorialParameterEvidence (P : CombinatorialParameterPackage) where
  necessaryConditionsClosed : P.necessaryConditions
  basicRelationClosed : P.basicRelation
  lambdaRelationClosed : P.lambdaRelation
  fisherInequalityClosed : P.fisherInequality

def CombinatorialParameterClosed (P : CombinatorialParameterPackage) : Prop :=
  P.necessaryConditions ∧ P.basicRelation ∧ P.lambdaRelation ∧ P.fisherInequality

theorem combinatorial_parameter_closed_from_evidence (P : CombinatorialParameterPackage) (E : CombinatorialParameterEvidence P) :
    CombinatorialParameterClosed P := by
  exact And.intro E.necessaryConditionsClosed (And.intro E.basicRelationClosed (And.intro E.lambdaRelationClosed E.fisherInequalityClosed))

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse