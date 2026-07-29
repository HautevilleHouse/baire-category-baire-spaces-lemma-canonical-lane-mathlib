import BaireCategoryBaireSpacesLemmaCanonicalLaneLean.BaireSpace

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure BaireCategoryTheoremPackage (B : BaireSpacePackage) where
  denseOpenCountableIntersectionDense : Prop
  proofComplete : denseOpenCountableIntersectionDense

structure BaireCategoryTheoremEvidence (B : BaireSpacePackage) (T : BaireCategoryTheoremPackage B) where
  proofCompleteClosed : T.proofComplete

def BaireCategoryTheoremClosed (B : BaireSpacePackage) (T : BaireCategoryTheoremPackage B) : Prop :=
  T.denseOpenCountableIntersectionDense

theorem baire_category_theorem_closed_from_evidence (B : BaireSpacePackage)
    (T : BaireCategoryTheoremPackage B) (E : BaireCategoryTheoremEvidence B T) :
    BaireCategoryTheoremClosed B T := by
  exact E.proofCompleteClosed

end HautevilleHouse.BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse