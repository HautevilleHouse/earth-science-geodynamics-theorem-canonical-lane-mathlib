import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure IsostaticAdjustmentModelPackage where
  crustalThickness : Type u
  mantleDensity : Type v
  buoyancyForce : Type w
  hydrostaticEquilibrium : Prop
  isostaticCompensation : Prop
  compensationClosed : Prop

structure IsostaticAdjustmentModelEvidence (I : IsostaticAdjustmentModelPackage) where
  hydrostaticEquilibriumClosed : I.hydrostaticEquilibrium
  isostaticCompensationClosed : I.isostaticCompensation
  compensationClosedTerm : I.compensationClosed

def IsostaticAdjustmentModelClosed (I : IsostaticAdjustmentModelPackage) : Prop :=
  I.hydrostaticEquilibrium ∧ I.isostaticCompensation ∧ I.compensationClosed

theorem isostatic_adjustment_model_closed_from_evidence
    (I : IsostaticAdjustmentModelPackage) (E : IsostaticAdjustmentModelEvidence I) :
    IsostaticAdjustmentModelClosed I := by
  exact And.intro E.hydrostaticEquilibriumClosed (And.intro E.isostaticCompensationClosed E.compensationClosedTerm)

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse
