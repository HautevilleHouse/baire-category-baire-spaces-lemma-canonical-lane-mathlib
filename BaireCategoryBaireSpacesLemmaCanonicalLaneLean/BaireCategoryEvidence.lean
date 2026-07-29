import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BaireCategoryCanonicalLaneLean.BaireCategoryTheorem

namespace HautevilleHouse
namespace BaireCategoryCanonicalLaneLean

structure BaireCategoryEvidence {M : CompleteMetricSpacePackage} {B : BaireSpaceCategoryPackage}
    (T : BaireCategoryTheoremPackage M B) where
  metricSpaceHypothesis : CompleteMetricSpaceClosed M
  baireSpaceHypothesis : BaireSpaceCategoryClosed B
  theoremClosed : BaireCategoryTheoremClosed T

def BaireCategoryEvidenceClosed {M : CompleteMetricSpacePackage} {B : BaireSpaceCategoryPackage}
    {T : BaireCategoryTheoremPackage M B} (E : BaireCategoryEvidence T) : Prop :=
  E.metricSpaceHypothesis ∧ E.baireSpaceHypothesis ∧ E.theoremClosed

theorem baire_category_evidence_closed_from_evidence
    {M : CompleteMetricSpacePackage} {B : BaireSpaceCategoryPackage}
    {T : BaireCategoryTheoremPackage M B} (E : BaireCategoryEvidence T) :
    BaireCategoryEvidenceClosed E := by
  exact And.intro E.metricSpaceHypothesis
    (And.intro E.baireSpaceHypothesis E.theoremClosed)

end BaireCategoryCanonicalLaneLean
end HautevilleHouse