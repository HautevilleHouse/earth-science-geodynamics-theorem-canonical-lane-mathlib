import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure GeodeticDeformationModelPackage where
  displacementField : Type u
  strainRateTensor : Type v
  faultSlipModel : Type w
  elasticDislocation : Prop
  viscoelasticCoupling : Prop
  deformationClosed : Prop

structure GeodeticDeformationModelEvidence (G : GeodeticDeformationModelPackage) where
  elasticDislocationClosed : G.elasticDislocation
  viscoelasticCouplingClosed : G.viscoelasticCoupling
  deformationClosedTerm : G.deformationClosed

def GeodeticDeformationModelClosed (G : GeodeticDeformationModelPackage) : Prop :=
  G.elasticDislocation ∧ G.viscoelasticCoupling ∧ G.deformationClosed

theorem geodetic_deformation_model_closed_from_evidence
    (G : GeodeticDeformationModelPackage) (E : GeodeticDeformationModelEvidence G) :
    GeodeticDeformationModelClosed G := by
  exact And.intro E.elasticDislocationClosed (And.intro E.viscoelasticCouplingClosed E.deformationClosedTerm)

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse
