import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure DrivingForcesPackage where
  slabPull : Prop
  ridgePush : Prop
  mantleDrag : Prop
  trenchSuction : Prop
  plumeForces : Prop
  netTorqueBalance : Prop

structure DrivingForcesEvidence (D : DrivingForcesPackage) where
  slabPullClosed : D.slabPull
  ridgePushClosed : D.ridgePush
  mantleDragClosed : D.mantleDrag
  trenchSuctionClosed : D.trenchSuction
  plumeForcesClosed : D.plumeForces
  netTorqueBalanceClosed : D.netTorqueBalance

def DrivingForcesClosed (D : DrivingForcesPackage) : Prop :=
  D.slabPull ∧ D.ridgePush ∧ D.mantleDrag ∧
  D.trenchSuction ∧ D.plumeForces ∧ D.netTorqueBalance

theorem driving_forces_closed_from_evidence (D : DrivingForcesPackage)
    (E : DrivingForcesEvidence D) : DrivingForcesClosed D := by
  exact And.intro E.slabPullClosed
    (And.intro E.ridgePushClosed
      (And.intro E.mantleDragClosed
        (And.intro E.trenchSuctionClosed
          (And.intro E.plumeForcesClosed E.netTorqueBalanceClosed))))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse