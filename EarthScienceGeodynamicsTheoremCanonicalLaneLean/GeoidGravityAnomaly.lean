import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GeoidGravityAnomalyPackage where
  referenceEllipsoid : Prop
  gravityAnomalyModel : Prop
  geoidUndulation : Prop
  isostaticCompensation : Prop
  mantleConvectionSignal : Prop
  subductionZoneSignature : Prop

structure GeoidGravityAnomalyEvidence (G : GeoidGravityAnomalyPackage) where
  referenceEllipsoidClosed : G.referenceEllipsoid
  gravityAnomalyModelClosed : G.gravityAnomalyModel
  geoidUndulationClosed : G.geoidUndulation
  isostaticCompensationClosed : G.isostaticCompensation
  mantleConvectionSignalClosed : G.mantleConvectionSignal
  subductionZoneSignatureClosed : G.subductionZoneSignature

def GeoidGravityAnomalyClosed (G : GeoidGravityAnomalyPackage) : Prop :=
  G.referenceEllipsoid ∧ G.gravityAnomalyModel ∧ G.geoidUndulation ∧ G.isostaticCompensation ∧ G.mantleConvectionSignal ∧ G.subductionZoneSignature

theorem geoid_gravity_anomaly_closed_from_evidence (G : GeoidGravityAnomalyPackage) (E : GeoidGravityAnomalyEvidence G) : GeoidGravityAnomalyClosed G := by
  exact And.intro E.referenceEllipsoidClosed (And.intro E.gravityAnomalyModelClosed (And.intro E.geoidUndulationClosed (And.intro E.isostaticCompensationClosed (And.intro E.mantleConvectionSignalClosed E.subductionZoneSignatureClosed))))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse