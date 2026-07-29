import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  combinatorialConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "combinatorial-aspects-finite-geometries-05b30-lemma",
    theoremName := "Combinatorial Aspects Finite Geometries 05B30 Lemma",
    theoremObject := "A combinatorial design lemma for finite geometries (MSC 05B30)",
    classicalBoundary := "Unrestricted classical boundary carried as an open gap",
    combinatorialConstrainedStatement := "Combinatorial-constrained theorem certificate internalized through admissible-class closure",
    certificateLane := "combinatorial_constrained",
    carriedRemainder := "classical boundary remains open beyond the constrained admissible closure"
  }

end CombinatorialAspectsFiniteGeometries05b30LemmaCanonicalLaneLean
end HautevilleHouse