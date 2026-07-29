import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GeoidAndGravityPackage where
  geoidAnomaly : Prop
  gravityGradient : Prop
  mantleDensityHeterogeneity : Prop
  dynamicTopography : Prop

def GeoidAndGravityClosed (G : GeoidAndGravityPackage) : Prop :=
  G.geoidAnomaly ∧ G.gravityGradient ∧ G.mantleDensityHeterogeneity ∧ G.dynamicTopography

theorem geoid_and_gravity_closed : GeoidAndGravityClosed (GeoidAndGravityPackage.mk True True True True) := by
  exact And.intro True.intro (And.intro True.intro (And.intro True.intro True.intro))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse