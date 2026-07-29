import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure PlateTectonicsKinematicsPackage where
  plateMotionModel : Prop
  velocityBoundaryLayer : Prop
  plateRigidity : Prop
  faultMechanics : Prop
  eulerPoleDescription : Prop
  transformAndSpreadingSegments : Prop

structure PlateTectonicsKinematicsEvidence (P : PlateTectonicsKinematicsPackage) where
  plateMotionModelClosed : P.plateMotionModel
  velocityBoundaryLayerClosed : P.velocityBoundaryLayer
  plateRigidityClosed : P.plateRigidity
  faultMechanicsClosed : P.faultMechanics
  eulerPoleDescriptionClosed : P.eulerPoleDescription
  transformAndSpreadingSegmentsClosed : P.transformAndSpreadingSegments

def PlateTectonicsKinematicsClosed (P : PlateTectonicsKinematicsPackage) : Prop :=
  P.plateMotionModel ∧ P.velocityBoundaryLayer ∧ P.plateRigidity ∧ P.faultMechanics ∧ P.eulerPoleDescription ∧ P.transformAndSpreadingSegments

theorem plate_tectonics_kinematics_closed_from_evidence (P : PlateTectonicsKinematicsPackage) (E : PlateTectonicsKinematicsEvidence P) : PlateTectonicsKinematicsClosed P := by
  exact And.intro E.plateMotionModelClosed (And.intro E.velocityBoundaryLayerClosed (And.intro E.plateRigidityClosed (And.intro E.faultMechanicsClosed (And.intro E.eulerPoleDescriptionClosed E.transformAndSpreadingSegmentsClosed))))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse