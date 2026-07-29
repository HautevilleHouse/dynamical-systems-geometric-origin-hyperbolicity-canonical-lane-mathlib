import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure SmaleHorseshoe {M : Type u} (sys : DynamicalSystem M) where
  region : Set M
  horseshoeDynamics : sys.flow region region → Set (sys.flow region region)
  symbolicEncoding : String
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop
  sensitiveDependence : Prop
  topologicalTransitivityTerm : topologicalTransitivity
  densePeriodicPointsTerm : densePeriodicPoints
  sensitiveDependenceTerm : sensitiveDependence

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse