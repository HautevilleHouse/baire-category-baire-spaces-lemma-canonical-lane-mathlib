import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure CompleteMetricSpacePackage where
  carrier : Type u
  metric : carrier → carrier → ℝ
  metricSpace : Prop
  complete : Prop
  metricSpaceTerm : metricSpace
  completeTerm : complete

structure CompleteMetricSpaceEvidence (M : CompleteMetricSpacePackage) where
  metricSpaceClosed : M.metricSpace
  completeClosed : M.complete

def CompleteMetricSpaceClosed (M : CompleteMetricSpacePackage) : Prop :=
  M.metricSpace ∧ M.complete

theorem complete_metric_space_closed_from_evidence
    (M : CompleteMetricSpacePackage) (E : CompleteMetricSpaceEvidence M) :
    CompleteMetricSpaceClosed M := by
  exact And.intro E.metricSpaceClosed E.completeClosed

structure BaireSpacePackage {M : CompleteMetricSpacePackage} (h : CompleteMetricSpaceClosed M) where
  baireProperty : Prop
  bairePropertyTerm : baireProperty

structure BaireSpaceEvidence {M : CompleteMetricSpacePackage} {h : CompleteMetricSpaceClosed M}
    (B : BaireSpacePackage h) where
  bairePropertyClosed : B.baireProperty

def BaireSpaceClosed {M : CompleteMetricSpacePackage} {h : CompleteMetricSpaceClosed M}
    (B : BaireSpacePackage h) : Prop :=
  B.baireProperty

theorem baire_space_closed_from_evidence
    {M : CompleteMetricSpacePackage} {h : CompleteMetricSpaceClosed M}
    (B : BaireSpacePackage h) (E : BaireSpaceEvidence B) :
    BaireSpaceClosed B := by
  exact E.bairePropertyClosed

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse