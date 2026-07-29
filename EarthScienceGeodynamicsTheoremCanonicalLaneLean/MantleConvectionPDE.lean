import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure MantleConvectionPDEPackage where
  temperatureField : Type u
  velocityField : Type v
  stokesEquation : Prop
  heatEquation : Prop
  rheology : Prop
  viscosityModel : Prop
  boundaryConditions : Prop

structure MantleConvectionPDEEvidence (P : MantleConvectionPDEPackage) where
  stokesEquationClosed : P.stokesEquation
  heatEquationClosed : P.heatEquation
  rheologyClosed : P.rheology
  viscosityModelClosed : P.viscosityModel
  boundaryConditionsClosed : P.boundaryConditions

def MantleConvectionPDEClosed (P : MantleConvectionPDEPackage) : Prop :=
  P.stokesEquation ∧ P.heatEquation ∧ P.rheology ∧ P.viscosityModel ∧ P.boundaryConditions

theorem mantle_convection_pde_closed_from_evidence (P : MantleConvectionPDEPackage) (E : MantleConvectionPDEEvidence P) : MantleConvectionPDEClosed P := by
  exact And.intro E.stokesEquationClosed (And.intro E.heatEquationClosed (And.intro E.rheologyClosed (And.intro E.viscosityModelClosed E.boundaryConditionsClosed)))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse