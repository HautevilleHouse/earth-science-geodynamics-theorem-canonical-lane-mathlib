import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure PlateTectonicsBoundariesPackage where
  plateBoundaryType : Type u
  relativeVelocity : Type v
  subductionZoneGeometry : Type w
  divergenceZoneGeometry : Prop
  convergenceZoneGeometry : Prop
  transformZoneGeometry : Prop
  boundaryTypesClosed : Prop

structure PlateTectonicsBoundariesEvidence (P : PlateTectonicsBoundariesPackage) where
  divergenceZoneGeometryClosed : P.divergenceZoneGeometry
  convergenceZoneGeometryClosed : P.convergenceZoneGeometry
  transformZoneGeometryClosed : P.transformZoneGeometry
  boundaryTypesClosedTerm : P.boundaryTypesClosed

def PlateTectonicsBoundariesClosed (P : PlateTectonicsBoundariesPackage) : Prop :=
  P.divergenceZoneGeometry ∧ P.convergenceZoneGeometry ∧ P.transformZoneGeometry ∧ P.boundaryTypesClosed

theorem plate_tectonics_boundaries_closed_from_evidence
    (P : PlateTectonicsBoundariesPackage) (E : PlateTectonicsBoundariesEvidence P) :
    PlateTectonicsBoundariesClosed P := by
  exact And.intro E.divergenceZoneGeometryClosed
    (And.intro E.convergenceZoneGeometryClosed
      (And.intro E.transformZoneGeometryClosed E.boundaryTypesClosedTerm))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse
