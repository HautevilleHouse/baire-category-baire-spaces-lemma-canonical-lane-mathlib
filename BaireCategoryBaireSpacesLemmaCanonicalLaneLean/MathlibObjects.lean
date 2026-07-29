import BaireCategoryBaireSpacesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BaireSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  completeMetric : Prop
  baireProperty : Prop

structure BaireAdmittedObject where
  space : BaireSpace
  denseOpenCountableIntersectionDense : Prop
  conclusion : denseOpenCountableIntersectionDense

structure BaireEndgameState where
  object : BaireAdmittedObject

def BaireWitnessClosed (O : BaireAdmittedObject) : Prop := O.denseOpenCountableIntersectionDense

end HautevilleHouse.BaireCategoryBaireSpacesLemmaCanonicalLaneLean
end HautevilleHouse