import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure RheologyPackage where
  temperatureDependence : Prop
  pressureDependence : Prop
  strainRateDependence : Prop
  compositeLaws : Prop
  plasticYield : Prop

structure RheologyEvidence (R : RheologyPackage) where
  temperatureDependenceClosed : R.temperatureDependence
  pressureDependenceClosed : R.pressureDependence
  strainRateDependenceClosed : R.strainRateDependence
  compositeLawsClosed : R.compositeLaws
  plasticYieldClosed : R.plasticYield

def RheologyClosed (R : RheologyPackage) : Prop :=
  R.temperatureDependence ∧ R.pressureDependence ∧ R.strainRateDependence ∧
  R.compositeLaws ∧ R.plasticYield

theorem rheology_closed_from_evidence (R : RheologyPackage) (E : RheologyEvidence R) :
    RheologyClosed R := by
  exact And.intro E.temperatureDependenceClosed
    (And.intro E.pressureDependenceClosed
      (And.intro E.strainRateDependenceClosed
        (And.intro E.compositeLawsClosed E.plasticYieldClosed)))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse