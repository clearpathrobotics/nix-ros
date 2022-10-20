{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OTL";
    repo = "rqt_ez_publisher";
    rev = "30c16e8d353677ec02618c48acf63e82293d794d";
    hash = "sha256-Rz2+ijlUf2NGjfFFYjlPxDLVxc+4MLEO07SUpRETD/g=";
    name = "OTL-rqt_ez_publisher-30c16e8d353677ec02618c48acf63e82293d794d";
  });
in
{
  rqt_ez_publisher = pkg "sha256-Rz2+ijlUf2NGjfFFYjlPxDLVxc+4MLEO07SUpRETD/g=" ".";
}
