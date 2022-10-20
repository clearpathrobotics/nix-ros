{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "splintered-reality";
    repo = "py_trees";
    rev = "70e7d34d6c629627dea11293d6bbee68661c8608";
    hash = "sha256-ZCE2ogVEwV3boo2q02ITxDBPccozvDYUPCaGOoVesJA=";
    name = "splintered-reality-py_trees-70e7d34d6c629627dea11293d6bbee68661c8608";
  });
in
{
  py_trees = pkg "sha256-ZCE2ogVEwV3boo2q02ITxDBPccozvDYUPCaGOoVesJA=" ".";
}
