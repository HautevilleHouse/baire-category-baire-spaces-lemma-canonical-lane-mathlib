import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BaireCategoryBaireSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure BaireSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  completeMetric : Prop
  baireProperty : Prop
  bairePropertyTerm : baireProperty

structure BaireSpaceEvidence (B : BaireSpace) where
  completeMetricClosed : B.completeMetric
  bairePropertyClosed : B.baireProperty

def BaireSpaceClosed (B : BaireSpace) : Prop :=
  B.completeMetric ∧ B.baireProperty

theorem baire_space_closed_from_evidence (B : BaireSpace) (E : BaireSpaceEvidence B) :
    BaireSpaceClosed B := by
  exact And.intro E.completeMetricClosed E.bairePropertyClosed

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse