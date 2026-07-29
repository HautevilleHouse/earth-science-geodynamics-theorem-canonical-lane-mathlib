import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GeoidAnomalyComputationPackage where
  gravityPotential : Type u
  densityAnomaly : Type v
  geoidHeight : Type w
  stokesCoefficients : Prop
  sphericalHarmonicExpansion : Prop
  anomalyClosed : Prop

structure GeoidAnomalyComputationEvidence (G : GeoidAnomalyComputationPackage) where
  stokesCoefficientsClosed : G.stokesCoefficients
  sphericalHarmonicExpansionClosed : G.sphericalHarmonicExpansion
  anomalyClosedTerm : G.anomalyClosed

def GeoidAnomalyComputationClosed (G : GeoidAnomalyComputationPackage) : Prop :=
  G.stokesCoefficients ∧ G.sphericalHarmonicExpansion ∧ G.anomalyClosed

theorem geoid_anomaly_computation_closed_from_evidence
    (G : GeoidAnomalyComputationPackage) (E : GeoidAnomalyComputationEvidence G) :
    GeoidAnomalyComputationClosed G := by
  exact And.intro E.stokesCoefficientsClosed (And.intro E.sphericalHarmonicExpansionClosed E.anomalyClosedTerm)

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse
