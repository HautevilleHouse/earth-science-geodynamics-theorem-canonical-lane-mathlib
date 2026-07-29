import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure PlateTectonicsPackage where
  plateBoundariesCovered : Prop
  relativeVelocitiesComputed : Prop
  tripleJunctionConsistency : Prop
  slabPullForcesIncluded : Prop

structure PlateTectonicsEvidence (P : PlateTectonicsPackage) where
  plateBoundariesCoveredClosed : P.plateBoundariesCovered
  relativeVelocitiesComputedClosed : P.relativeVelocitiesComputed
  tripleJunctionConsistencyClosed : P.tripleJunctionConsistency
  slabPullForcesIncludedClosed : P.slabPullForcesIncluded

def PlateTectonicsClosed (P : PlateTectonicsPackage) : Prop :=
  P.plateBoundariesCovered ∧ P.relativeVelocitiesComputed ∧
  P.tripleJunctionConsistency ∧ P.slabPullForcesIncluded

theorem plate_tectonics_closed_from_evidence (P : PlateTectonicsPackage)
    (E : PlateTectonicsEvidence P) : PlateTectonicsClosed P :=
  And.intro E.plateBoundariesCoveredClosed
    (And.intro E.relativeVelocitiesComputedClosed
      (And.intro E.tripleJunctionConsistencyClosed E.slabPullForcesIncludedClosed))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse