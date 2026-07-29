import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeodynamicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.evidence

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse