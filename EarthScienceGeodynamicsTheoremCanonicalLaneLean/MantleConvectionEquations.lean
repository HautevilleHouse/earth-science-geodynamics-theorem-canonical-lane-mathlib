import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure MantleConvectionEquationsPackage where
  temperatureField : Type u
  velocityField : Type v
  viscosityField : Type w
  stokesEquation : Prop
  energyEquation : Prop
  equationClosed : Prop

structure MantleConvectionEquationsEvidence (C : MantleConvectionEquationsPackage) where
  stokesEquationClosed : C.stokesEquation
  energyEquationClosed : C.energyEquation
  equationClosedTerm : C.equationClosed

def MantleConvectionEquationsClosed (C : MantleConvectionEquationsPackage) : Prop :=
  C.stokesEquation ∧ C.energyEquation ∧ C.equationClosed

theorem mantle_convection_equations_closed_from_evidence
    (C : MantleConvectionEquationsPackage) (E : MantleConvectionEquationsEvidence C) :
    MantleConvectionEquationsClosed C := by
  exact And.intro E.stokesEquationClosed (And.intro E.energyEquationClosed E.equationClosedTerm)

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse
