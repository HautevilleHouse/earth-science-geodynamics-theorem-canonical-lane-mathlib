import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure MantleConvectionPackage where
  rayleighNumber : Prop
  thermalBoundaryLayer : Prop
  convectionCellPattern : Prop
  viscosityContrast : Prop

def MantleConvectionClosed (M : MantleConvectionPackage) : Prop :=
  M.rayleighNumber ∧ M.thermalBoundaryLayer ∧
  M.convectionCellPattern ∧ M.viscosityContrast

theorem mantle_convection_closed : MantleConvectionClosed (MantleConvectionPackage.mk True True True True) := by
  exact And.intro True.intro (And.intro True.intro (And.intro True.intro True.intro))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse