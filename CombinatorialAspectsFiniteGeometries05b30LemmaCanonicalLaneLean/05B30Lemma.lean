import .AdmissibleClass
import .DesignStructure
import .FiniteProjectivePlane
import .BlockDesignClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure 05B30LemmaProof where
  design : DesignStructure
  projectivePlane : FiniteProjectivePlane
  blockClass : BlockDesignClass
  lemmaStatement : Prop
  lemmaProof : lemmaStatement

theorem 05b30_lemma (D : DesignStructure) (π : FiniteProjectivePlane) (B : BlockDesignClass) : 05B30LemmaProof :=
  { design := D
    projectivePlane := π
    blockClass := B
    lemmaStatement := ∃ n : ℕ, D.v = n^2 + n + 1 ∧ D.k = n + 1 ∧ D.λ = 1
    lemmaProof := by
      let n := π.order
      have hv : D.v = n^2 + n + 1 := by
        simpa using DesignStructure.v_eq_n_sq_add_n_add_one D π
      have hk : D.k = n + 1 := by
        simpa using DesignStructure.k_eq_n_add_one D π
      have hλ : D.λ = 1 := by
        simpa using BlockDesignClass.λ_eq_one B
      exact ⟨n, hv, hk, hλ⟩
  }

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse