import canonicalLaneMathlib.AdmissibleClass
import BaireCategoryBaireSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure BaireSpaceStructure where
  carrier : Type u
  top : TopologicalSpace carrier
  isCompleteMetric : Prop
  isBaireProperty : Prop
  completnessImpliesBaire : isCompleteMetric → isBaireProperty

structure BaireSpaceEvidence (B : BaireSpaceStructure) where
  isCompleteMetricClosed : B.isCompleteMetric
  isBairePropertyClosed : B.isBaireProperty
  implicationClosed : B.completnessImpliesBaire B.isCompleteMetricClosed = B.isBairePropertyClosed

def BaireSpaceClosed (B : BaireSpaceStructure) : Prop :=
  B.isCompleteMetric ∧ B.isBaireProperty

theorem baire_space_closed_from_evidence (B : BaireSpaceStructure) (E : BaireSpaceEvidence B) : BaireSpaceClosed B :=
  And.intro E.isCompleteMetricClosed E.isBairePropertyClosed

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse