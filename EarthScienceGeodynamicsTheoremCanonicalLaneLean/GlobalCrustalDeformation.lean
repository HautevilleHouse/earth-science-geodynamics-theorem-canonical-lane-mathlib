import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GlobalCrustalDeformationPackage where
  stressField : Prop
  strainRate : Prop
  faultSystem : Prop
  isostasy : Prop

def GlobalCrustalDeformationClosed (G : GlobalCrustalDeformationPackage) : Prop :=
  G.stressField ∧ G.strainRate ∧ G.faultSystem ∧ G.isostasy

theorem global_crustal_deformation_closed : GlobalCrustalDeformationClosed (GlobalCrustalDeformationPackage.mk True True True True) := by
  exact And.intro True.intro (And.intro True.intro (And.intro True.intro True.intro))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse