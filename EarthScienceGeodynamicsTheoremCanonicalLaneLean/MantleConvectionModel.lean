import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure MantleConvectionPackage where
  viscosityProfileDefined : Prop
  thermalBoundaryLayers : Prop
  plumeDynamicsCaptured : Prop
  dimensionlessNumbersSet : Prop

structure MantleConvectionEvidence (M : MantleConvectionPackage) where
  viscosityProfileDefinedClosed : M.viscosityProfileDefined
  thermalBoundaryLayersClosed : M.thermalBoundaryLayers
  plumeDynamicsCapturedClosed : M.plumeDynamicsCaptured
  dimensionlessNumbersSetClosed : M.dimensionlessNumbersSet

def MantleConvectionClosed (M : MantleConvectionPackage) : Prop :=
  M.viscosityProfileDefined ∧ M.thermalBoundaryLayers ∧
  M.plumeDynamicsCaptured ∧ M.dimensionlessNumbersSet

theorem mantle_convection_closed_from_evidence (M : MantleConvectionPackage)
    (E : MantleConvectionEvidence M) : MantleConvectionClosed M :=
  And.intro E.viscosityProfileDefinedClosed
    (And.intro E.thermalBoundaryLayersClosed
      (And.intro E.plumeDynamicsCapturedClosed E.dimensionlessNumbersSetClosed))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse