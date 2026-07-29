import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure MantlePlumePackage where
  plumeRiseBuoyancy : Prop
  thermalEntrainment : Prop
  excessTemperature : Prop
  meltProduction : Prop
  hotspotVolcanism : Prop
  plumeTectonicsInteraction : Prop

structure MantlePlumeEvidence (M : MantlePlumePackage) where
  plumeRiseBuoyancyClosed : M.plumeRiseBuoyancy
  thermalEntrainmentClosed : M.thermalEntrainment
  excessTemperatureClosed : M.excessTemperature
  meltProductionClosed : M.meltProduction
  hotspotVolcanismClosed : M.hotspotVolcanism
  plumeTectonicsInteractionClosed : M.plumeTectonicsInteraction

def MantlePlumeClosed (M : MantlePlumePackage) : Prop :=
  M.plumeRiseBuoyancy ∧ M.thermalEntrainment ∧ M.excessTemperature ∧
  M.meltProduction ∧ M.hotspotVolcanism ∧ M.plumeTectonicsInteraction

theorem mantle_plume_closed_from_evidence (M : MantlePlumePackage)
    (E : MantlePlumeEvidence M) : MantlePlumeClosed M := by
  exact And.intro E.plumeRiseBuoyancyClosed
    (And.intro E.thermalEntrainmentClosed
      (And.intro E.excessTemperatureClosed
        (And.intro E.meltProductionClosed
          (And.intro E.hotspotVolcanismClosed E.plumeTectonicsInteractionClosed))))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse