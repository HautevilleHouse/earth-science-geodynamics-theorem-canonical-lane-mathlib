import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure RheologyStructurePackage where
  stressStrainRelation : Type u
  yieldCriterion : Type v
  viscoElasticDecomposition : Prop
  stressStrainClosed : Prop
  yieldCriterionClosed : Prop

structure RheologyStructureEvidence (R : RheologyStructurePackage) where
  viscoElasticDecompositionClosed : R.viscoElasticDecomposition
  stressStrainClosedTerm : R.stressStrainClosed
  yieldCriterionClosedTerm : R.yieldCriterionClosed

def RheologyStructureClosed (R : RheologyStructurePackage) : Prop :=
  R.viscoElasticDecomposition ∧ R.stressStrainClosed ∧ R.yieldCriterionClosed

theorem rheology_structure_closed_from_evidence
    (R : RheologyStructurePackage) (E : RheologyStructureEvidence R) :
    RheologyStructureClosed R := by
  exact And.intro E.viscoElasticDecompositionClosed (And.intro E.stressStrainClosedTerm E.yieldCriterionClosedTerm)

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse
