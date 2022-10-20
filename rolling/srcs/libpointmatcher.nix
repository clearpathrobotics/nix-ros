{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ethz-asl";
    repo = "libpointmatcher";
    rev = "e45710b421f757d7eadbf03cd93cb12e698098f8";
    hash = "sha256-G66yeRX536308rvY7EPeK1dHpHTiQrChUeUn4hBuP7M=";
    name = "ethz-asl-libpointmatcher-e45710b421f757d7eadbf03cd93cb12e698098f8";
  });
in
{
  libpointmatcher = pkg "sha256-G66yeRX536308rvY7EPeK1dHpHTiQrChUeUn4hBuP7M=" ".";
}
