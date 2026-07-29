import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean

structure GeodesicFlow (M : Type u) [RiemannianManifold M] where
  unitTangentBundle : Type v
  flow : unitTangentBundle → ℝ → unitTangentBundle
  geodesicEquations : Prop
  hamiltonianStructure : Prop
  conservedQuantities : List String
  geodesicEquationsTerm : geodesicEquations
  hamiltonianStructureTerm : hamiltonianStructure

end DynamicalSystemsGeometricOriginHyperbolicityCanonicalLaneLean
end HautevilleHouse