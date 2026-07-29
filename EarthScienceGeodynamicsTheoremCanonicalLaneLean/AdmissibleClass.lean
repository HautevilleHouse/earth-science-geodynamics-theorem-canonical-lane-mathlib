import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GeodynamicsAdmittedObject where
  object : AdmittedObject
  plateBoundaryModel : Prop
  mantleConvectionModel : Prop
  crustalDeformationModel : Prop
  evidence : plateBoundaryModel ∧ mantleConvectionModel ∧ crustalDeformationModel

structure AdmissibleClass where
  object : GeodynamicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeodynamicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GeodynamicsWitnessClosed (O : GeodynamicsAdmittedObject) : Prop :=
  O.evidence

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse