import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure EarthScienceGeodynamicsObject where
  carrier : Type
  topology : TopologicalSpace carrier
  conclusion : Prop

def EarthScienceGeodynamicsWitnessClosed (O : EarthScienceGeodynamicsObject) : Prop :=
  O.conclusion

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse