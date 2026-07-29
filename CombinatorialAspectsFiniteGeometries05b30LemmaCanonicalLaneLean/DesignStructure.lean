import .AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure DesignStructure where
  pointSet : Type
  blockSet : Type
  incidence : pointSet → blockSet → Prop
  v : ℕ
  k : ℕ
  λ : ℕ
  regularDesign : Prop
  balancedDesign : Prop

def is_t_design (D : DesignStructure) (t : ℕ) : Prop :=
  ∀ (S : Finset D.pointSet), S.card = t →
    (Finset.filter (λ B => ∀ x ∈ S, D.incidence x B) (Finset.univ : Finset D.blockSet)).card = D.λ

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse