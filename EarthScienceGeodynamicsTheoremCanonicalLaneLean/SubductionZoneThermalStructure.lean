import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure SubductionThermalPackage where
  slabTemperatureField : Prop
  shearHeating : Prop
  dehydrationFlux : Prop
  phaseTransitions : Prop
  backArcFlow : Prop
  thermalEquilibrium : Prop

structure SubductionThermalEvidence (S : SubductionThermalPackage) where
  slabTemperatureFieldClosed : S.slabTemperatureField
  shearHeatingClosed : S.shearHeating
  dehydrationFluxClosed : S.dehydrationFlux
  phaseTransitionsClosed : S.phaseTransitions
  backArcFlowClosed : S.backArcFlow
  thermalEquilibriumClosed : S.thermalEquilibrium

def SubductionThermalClosed (S : SubductionThermalPackage) : Prop :=
  S.slabTemperatureField ∧ S.shearHeating ∧ S.dehydrationFlux ∧
  S.phaseTransitions ∧ S.backArcFlow ∧ S.thermalEquilibrium

theorem subduction_thermal_closed_from_evidence (S : SubductionThermalPackage)
    (E : SubductionThermalEvidence S) : SubductionThermalClosed S := by
  exact And.intro E.slabTemperatureFieldClosed
    (And.intro E.shearHeatingClosed
      (And.intro E.dehydrationFluxClosed
        (And.intro E.phaseTransitionsClosed
          (And.intro E.backArcFlowClosed E.thermalEquilibriumClosed))))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse