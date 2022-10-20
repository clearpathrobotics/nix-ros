{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "InnopolisAero";
    repo = "inno_sim_interface";
    rev = "57eb1bd9a8c26be9ba1ed2a2cbda6c24e7b33692";
    hash = "sha256-CMkNoOGao3lrJEVQnmc6lNWiQngYfvFOmbVaci1k/rA=";
    name = "InnopolisAero-inno_sim_interface-57eb1bd9a8c26be9ba1ed2a2cbda6c24e7b33692";
  });
in
{
  inno_sim_interface = pkg "sha256-CMkNoOGao3lrJEVQnmc6lNWiQngYfvFOmbVaci1k/rA=" ".";
}
