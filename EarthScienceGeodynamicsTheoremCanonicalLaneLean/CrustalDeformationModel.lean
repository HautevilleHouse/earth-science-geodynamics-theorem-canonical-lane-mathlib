import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure CrustalDeformationPackage where
  strainRateFieldComputed : Prop
  faultSystemGeometry : Prop
  elasticPlateTheory : Prop
  isostaticCompensation : Prop

structure CrustalDeformationEvidence (C : CrustalDeformationPackage) where
  strainRateFieldComputedClosed : C.strainRateFieldComputed
  faultSystemGeometryClosed : C.faultSystemGeometry
  elasticPlateTheoryClosed : C.elasticPlateTheory
  isostaticCompensationClosed : C.isostaticCompensation

def CrustalDeformationClosed (C : CrustalDeformationPackage) : Prop :=
  C.strainRateFieldComputed ∧ C.faultSystemGeometry ∧
  C.elasticPlateTheory ∧ C.isostaticCompensation

theorem crustal_deformation_closed_from_evidence (C : CrustalDeformationPackage)
    (E : CrustalDeformationEvidence C) : CrustalDeformationClosed C :=
  And.intro E.strainRateFieldComputedClosed
    (And.intro E.faultSystemGeometryClosed
      (And.intro E.elasticPlateTheoryClosed E.isostaticCompensationClosed))

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse