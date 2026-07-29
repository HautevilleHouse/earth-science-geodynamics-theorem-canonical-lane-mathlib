import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsTheoremCanonicalLaneLean

structure SeismicTomographyInversionPackage where
  travelTimeData : Type u
  velocityModel : Type v
  raypathGeometry : Type w
  inversionConvergence : Prop
  resolutionMatrix : Prop
  inversionClosed : Prop

structure SeismicTomographyInversionEvidence (S : SeismicTomographyInversionPackage) where
  inversionConvergenceClosed : S.inversionConvergence
  resolutionMatrixClosed : S.resolutionMatrix
  inversionClosedTerm : S.inversionClosed

def SeismicTomographyInversionClosed (S : SeismicTomographyInversionPackage) : Prop :=
  S.inversionConvergence ∧ S.resolutionMatrix ∧ S.inversionClosed

theorem seismic_tomography_inversion_closed_from_evidence
    (S : SeismicTomographyInversionPackage) (E : SeismicTomographyInversionEvidence S) :
    SeismicTomographyInversionClosed S := by
  exact And.intro E.inversionConvergenceClosed (And.intro E.resolutionMatrixClosed E.inversionClosedTerm)

end EarthScienceGeodynamicsTheoremCanonicalLaneLean
end HautevilleHouse
