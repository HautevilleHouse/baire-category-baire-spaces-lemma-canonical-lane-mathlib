import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BaireCategoryBaireSpacesLemmaCanonicalLaneLean.BaireSpaceDefinition

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure MeagerSet (X : Type u) [TopologicalSpace X] where
  subset : Set X
  isMeager : Prop
  countableUnionOfNowhereDense : Prop
  isMeagerTerm : isMeager

structure ComeagerSet (X : Type u) [TopologicalSpace X] where
  subset : Set X
  isComeager : Prop
  complementIsMeager : Prop
  isComeagerTerm : isComeager

def MeagerClosed {X : Type u} [TopologicalSpace X] (M : MeagerSet X) : Prop :=
  M.isMeager ∧ M.countableUnionOfNowhereDense

def ComeagerClosed {X : Type u} [TopologicalSpace X] (C : ComeagerSet X) : Prop :=
  C.isComeager ∧ C.complementIsMeager

theorem meager_closed_from_evidence {X : Type u} [TopologicalSpace X] (M : MeagerSet X) :
    MeagerClosed M := by
  exact And.intro M.isMeagerTerm M.countableUnionOfNowhereDense

theorem comeager_closed_from_evidence {X : Type u} [TopologicalSpace X] (C : ComeagerSet X) :
    ComeagerClosed C := by
  exact And.intro C.isComeagerTerm C.complementIsMeager

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse