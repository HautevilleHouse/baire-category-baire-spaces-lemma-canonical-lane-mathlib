import Mathlib.Topology.Baire

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure BaireSpacePackage (X : Type u) [TopologicalSpace X] where
  isBaire : BaireSpace X
  countableIntersectionOpenDense : Prop
  countableIntersectionOpenDenseClosed : countableIntersectionOpenDense

structure BaireSpaceEvidence {X : Type u} [TopologicalSpace X] (B : BaireSpacePackage X) where
  isBaireClosed : B.isBaire
  countableIntersectionOpenDenseClosed : B.countableIntersectionOpenDense

def BaireSpaceClosed {X : Type u} [TopologicalSpace X] (B : BaireSpacePackage X) : Prop :=
  B.isBaire ∧ B.countableIntersectionOpenDense

theorem baire_space_closed_from_evidence {X : Type u} [TopologicalSpace X] (B : BaireSpacePackage X) (E : BaireSpaceEvidence B) : BaireSpaceClosed B := by
  exact And.intro E.isBaireClosed E.countableIntersectionOpenDenseClosed

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse