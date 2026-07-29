import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BaireCategoryBaireSpacesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse