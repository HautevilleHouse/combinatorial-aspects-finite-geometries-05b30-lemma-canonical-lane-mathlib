import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure DualDesignPackage where
  dualPointSet : Type u
  dualBlockSet : Type v
  dualIncidenceRelation : dualPointSet → dualBlockSet → Prop
  dualDesignAxioms : Prop
  dualDesignExists : dualDesignAxioms

def DualDesignClosed (D : DualDesignPackage) : Prop :=
  D.dualDesignAxioms

theorem dual_design_closed_from_evidence (D : DualDesignPackage) :
    DualDesignClosed D := by
  exact D.dualDesignExists

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse