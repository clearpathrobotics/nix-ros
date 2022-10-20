{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "diagnostics";
    rev = "c22acbfb15121df8193f43bdd6d366f944c5e3cc";
    hash = "sha256-u6xe7R4c4iuEhCBtfi86h9nl3WgldSwn3Q8UzHp2z/c=";
    name = "ros-diagnostics-c22acbfb15121df8193f43bdd6d366f944c5e3cc";
  });
in
{
  diagnostic_aggregator = pkg "sha256-tpdVD+rL4fsxRlzWK670J2q8aRp7i9XXsvRRk/Jqlik=" "diagnostic_aggregator";
  diagnostic_updater = pkg "sha256-AW6zEvv2ePk8JMarkjUM4F9DwemHTR8QqQKDEu1Coms=" "diagnostic_updater";
  self_test = pkg "sha256-ICsORyeDVsnsK4BtKbUJtbsfV2ilP29fl5cDMeCMlDM=" "self_test";
}
