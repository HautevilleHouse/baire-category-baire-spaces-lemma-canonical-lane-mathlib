import Mathlib.CategoryTheory.Category.Basic
import Mathlib.Topology.Baire

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure BaireCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : ∀ (X : Obj), Hom X X
  comp : ∀ {X Y Z : Obj}, Hom X Y → Hom Y Z → Hom X Z
  id_left : ∀ {X Y : Obj} (f : Hom X Y), comp (id X) f = f
  id_right : ∀ {X Y : Obj} (f : Hom X Y), comp f (id Y) = f
  assoc : ∀ {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z), comp (comp f g) h = comp f (comp g h)

def BaireCategoryOfSpaces : BaireCategory :=
  let obj := Σ (X : Type u) [TopologicalSpace X], BaireSpace X
  {
    Obj := obj
    Hom := λ X Y => ContinuousMap X.1 Y.1
    id := λ X => ContinuousMap.id X.1
    comp := λ f g => g.comp f
    id_left := λ f => by
      ext x
      rfl
    id_right := λ f => by
      ext x
      rfl
    assoc := λ f g h => by
      ext x
      rfl
  }

theorem baire_category_is_category : CategoryTheory.Category (BaireCategoryOfSpaces.Obj) := by
  refine {
    Hom := BaireCategoryOfSpaces.Hom
    id := BaireCategoryOfSpaces.id
    comp := BaireCategoryOfSpaces.comp
    id_comp := ?_
    comp_id := ?_
    assoc := ?_
  }
  · intro X Y f
    exact BaireCategoryOfSpaces.id_left f
  · intro X Y f
    exact BaireCategoryOfSpaces.id_right f
  · intro W X Y Z f g h
    exact BaireCategoryOfSpaces.assoc f g h

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse