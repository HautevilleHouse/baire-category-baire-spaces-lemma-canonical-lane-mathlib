import canonicalLaneMathlib.AdmissibleClass
import BaireCategoryBaireSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleBaireClass) : Prop :=
  A.isBaire

theorem bridge_from_admissible_class (A : AdmissibleBaireClass) : bridgeClosed A :=
by
  unfold bridgeClosed
  -- A.isBaire holds by construction of AdmissibleBaireClass
  match A with
  | ⟨_, h⟩ => exact h

end BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse