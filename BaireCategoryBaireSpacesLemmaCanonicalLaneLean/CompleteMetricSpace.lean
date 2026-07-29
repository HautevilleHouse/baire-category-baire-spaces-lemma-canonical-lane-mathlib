import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryCanonicalLaneLean

structure CompleteMetricSpacePackage where
  metricSpace : Type u
  metric : metricSpace → metricSpace → ℝ
  metricSpaceAxioms : Prop
  completeness : Prop
  topologyFromMetric : TopologicalSpace metricSpace
  topologyCompatible : Prop

structure CompleteMetricSpaceEvidence (M : CompleteMetricSpacePackage) where
  metricSpaceAxiomsClosed : M.metricSpaceAxioms
  completenessClosed : M.completeness
  topologyCompatibleClosed : M.topologyCompatible

def CompleteMetricSpaceClosed (M : CompleteMetricSpacePackage) : Prop :=
  M.metricSpaceAxioms ∧ M.completeness ∧ M.topologyCompatible

theorem complete_metric_space_closed_from_evidence
    (M : CompleteMetricSpacePackage) (E : CompleteMetricSpaceEvidence M) :
    CompleteMetricSpaceClosed M := by
  exact And.intro E.metricSpaceAxiomsClosed
    (And.intro E.completenessClosed E.topologyCompatibleClosed)

end BaireCategoryCanonicalLaneLean
end HautevilleHouse