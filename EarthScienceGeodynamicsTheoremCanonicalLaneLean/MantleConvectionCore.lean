import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure MantleConvectionPackage where
  viscosityModel : Prop
  heatFluxEquation : Prop
  thermalBoundaryLayer : Prop
  convectionCellPattern : Prop

structure MantleConvectionEvidence (M : MantleConvectionPackage) where
  viscosityModelClosed : M.viscosityModel
  heatFluxEquationClosed : M.heatFluxEquation
  thermalBoundaryLayerClosed : M.thermalBoundaryLayer
  convectionCellPatternClosed : M.convectionCellPattern

def MantleConvectionClosed (M : MantleConvectionPackage) : Prop :=
  M.viscosityModel ∧ M.heatFluxEquation ∧ M.thermalBoundaryLayer ∧ M.convectionCellPattern

theorem mantle_convection_closed_from_evidence (M : MantleConvectionPackage) (E : MantleConvectionEvidence M) : MantleConvectionClosed M := by
  exact And.intro E.viscosityModelClosed (And.intro E.heatFluxEquationClosed (And.intro E.thermalBoundaryLayerClosed E.convectionCellPatternClosed))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse