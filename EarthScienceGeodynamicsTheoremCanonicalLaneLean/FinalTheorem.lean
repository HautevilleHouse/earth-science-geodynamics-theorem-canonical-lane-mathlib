import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

def ConstrainedGeodynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geodynamics_endgame (A : AdmissibleClass) :
    ConstrainedGeodynamicsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse