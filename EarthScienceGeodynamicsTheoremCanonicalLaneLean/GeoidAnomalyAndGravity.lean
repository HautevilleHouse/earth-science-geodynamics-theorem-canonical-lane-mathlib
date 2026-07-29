import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GeoidAnomalyPackage where
  densityAnomalyIntegration : Prop
  viscousGravityCoupling : Prop
  loadingBoundaryConditions : Prop
  longWavelengthApproximation : Prop
  spectralAdmittance : Prop
  kernel : Prop

structure GeoidAnomalyEvidence (G : GeoidAnomalyPackage) where
  densityAnomalyIntegrationClosed : G.densityAnomalyIntegration
  viscousGravityCouplingClosed : G.viscousGravityCoupling
  loadingBoundaryConditionsClosed : G.loadingBoundaryConditions
  longWavelengthApproximationClosed : G.longWavelengthApproximation
  spectralAdmittanceClosed : G.spectralAdmittance
  kernelClosed : G.kernel

def GeoidAnomalyClosed (G : GeoidAnomalyPackage) : Prop :=
  G.densityAnomalyIntegration ∧ G.viscousGravityCoupling ∧
  G.loadingBoundaryConditions ∧ G.longWavelengthApproximation ∧
  G.spectralAdmittance ∧ G.kernel

theorem geoid_anomaly_closed_from_evidence (G : GeoidAnomalyPackage)
    (E : GeoidAnomalyEvidence G) : GeoidAnomalyClosed G := by
  exact And.intro E.densityAnomalyIntegrationClosed
    (And.intro E.viscousGravityCouplingClosed
      (And.intro E.loadingBoundaryConditionsClosed
        (And.intro E.longWavelengthApproximationClosed
          (And.intro E.spectralAdmittanceClosed E.kernelClosed))))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse