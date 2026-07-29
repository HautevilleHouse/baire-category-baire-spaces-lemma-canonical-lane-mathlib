import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryCanonicalLaneLean

structure BaireSpaceCategoryPackage where
  countableIntersectionDenseOpen : Prop
  denseGdeltaSets : Prop
  residualSets : Prop
  baireCategoryProperty : Prop

structure BaireSpaceCategoryEvidence (B : BaireSpaceCategoryPackage) where
  countableIntersectionDenseOpenClosed : B.countableIntersectionDenseOpen
  denseGdeltaSetsClosed : B.denseGdeltaSets
  residualSetsClosed : B.residualSets
  baireCategoryPropertyClosed : B.baireCategoryProperty

def BaireSpaceCategoryClosed (B : BaireSpaceCategoryPackage) : Prop :=
  B.countableIntersectionDenseOpen ∧ B.denseGdeltaSets ∧
  B.residualSets ∧ B.baireCategoryProperty

theorem baire_space_category_closed_from_evidence
    (B : BaireSpaceCategoryPackage) (E : BaireSpaceCategoryEvidence B) :
    BaireSpaceCategoryClosed B := by
  exact And.intro E.countableIntersectionDenseOpenClosed
    (And.intro E.denseGdeltaSetsClosed
      (And.intro E.residualSetsClosed E.baireCategoryPropertyClosed))

end BaireCategoryCanonicalLaneLean
end HautevilleHouse