import Mathlib.Topology.Baire

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

theorem baire_category_lemma {X : Type u} [TopologicalSpace X] [BaireSpace X] {U : ℕ → Set X} (h : ∀ n, IsOpen (U n) ∧ Dense (U n)) : Dense (⋂ n, U n) := by
  have h_open : ∀ n, IsOpen (U n) := λ n => (h n).1
  have h_dense : ∀ n, Dense (U n) := λ n => (h n).2
  exact dense_iInter_of_open h_open h_dense

structure BaireCategoryLemmaPackage where
  statement : Prop
  proof : statement

def baireCategoryLemmaPackage : BaireCategoryLemmaPackage :=
  { statement := ∀ (X : Type u) [TopologicalSpace X] [BaireSpace X] (U : ℕ → Set X),
      (∀ n, IsOpen (U n) ∧ Dense (U n)) → Dense (⋂ n, U n)
    proof := by
      intro X _ _ U h
      exact baire_category_lemma h
  }

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse