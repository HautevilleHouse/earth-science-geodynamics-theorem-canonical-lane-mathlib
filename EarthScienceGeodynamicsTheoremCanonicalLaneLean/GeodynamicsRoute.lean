import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeodynamicsTheoremCanonicalLaneLean.PlateTectonicsModel
import EarthScienceGeodynamicsTheoremCanonicalLaneLean.MantleConvectionModel
import EarthScienceGeodynamicsTheoremCanonicalLaneLean.CrustalDeformationModel

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GeodynamicsRouteObligations where
  plateTectonics : PlateTectonicsPackage
  mantleConvection : MantleConvectionPackage
  crustalDeformation : CrustalDeformationPackage
  integratedModel : Prop

structure GeodynamicsRouteEvidence (R : GeodynamicsRouteObligations) where
  plateTectonicsClosed : PlateTectonicsClosed R.plateTectonics
  mantleConvectionClosed : MantleConvectionClosed R.mantleConvection
  crustalDeformationClosed : CrustalDeformationClosed R.crustalDeformation
  integratedModelClosed : R.integratedModel

def GeodynamicsRouteClosed (R : GeodynamicsRouteObligations) : Prop :=
  PlateTectonicsClosed R.plateTectonics ∧
  MantleConvectionClosed R.mantleConvection ∧
  CrustalDeformationClosed R.crustalDeformation ∧
  R.integratedModel

theorem geodynamics_route_closed_from_evidence (R : GeodynamicsRouteObligations)
    (E : GeodynamicsRouteEvidence R) : GeodynamicsRouteClosed R :=
  And.intro E.plateTectonicsClosed
    (And.intro E.mantleConvectionClosed
      (And.intro E.crustalDeformationClosed E.integratedModelClosed))

structure GeodynamicsCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : GeodynamicsRouteObligations
  evidence : GeodynamicsRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem geodynamics_route_yields_constrained_closure
    (A : AdmissibleClass) (R : GeodynamicsCanonicalLaneRoute A) :
    ConstrainedGeodynamicsClosure A :=
  And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse