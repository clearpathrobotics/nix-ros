{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "utexas-bwi";
    repo = "knowledge_representation";
    rev = "e17ed543fc1aca28348b74faa541f279c6cec99c";
    hash = "sha256-jiGaVQ6yDtThlioHWZ/13NcniBfeiOzBCXEUZockjmg=";
    name = "utexas-bwi-knowledge_representation-e17ed543fc1aca28348b74faa541f279c6cec99c";
  });
in
{
  knowledge_representation = pkg "sha256-jiGaVQ6yDtThlioHWZ/13NcniBfeiOzBCXEUZockjmg=" ".";
}
