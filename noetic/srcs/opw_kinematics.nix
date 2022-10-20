{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Jmeyer1292";
    repo = "opw_kinematics";
    rev = "0faf74269d1b8c3358f65356ea45feb2046a993e";
    hash = "sha256-G2Lj2UvjoqAHRVoajJeE+nwExpIcXlNcajM3nLIBPh4=";
    name = "Jmeyer1292-opw_kinematics-0faf74269d1b8c3358f65356ea45feb2046a993e";
  });
in
{
  opw_kinematics = pkg "sha256-G2Lj2UvjoqAHRVoajJeE+nwExpIcXlNcajM3nLIBPh4=" ".";
}
