import Mathlib.Topology.Baire
import Mathlib.Topology.MetricSpace.Baire

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

structure CompleteMetricBairePackage (X : Type u) [MetricSpace X] where
  isComplete : CompleteSpace X
  isBaire : BaireSpace X
  proof : isComplete → isBaire

theorem complete_metric_baire {X : Type u} [MetricSpace X] [CompleteSpace X] : BaireSpace X := by
  infer_instance

def completeMetricBairePackage (X : Type u) [MetricSpace X] [CompleteSpace X] : CompleteMetricBairePackage X :=
  { isComplete := by infer_instance
    isBaire := by infer_instance
    proof := λ h => by infer_instance
  }

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse