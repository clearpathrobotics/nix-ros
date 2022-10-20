{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "tsid";
    rev = "e894ee22b408c8f63867049f49fec99f3d2e5a9f";
    hash = "sha256-5mCeMSp//Yfzl24SZjTDYQ+IClqBE2lcSD3dZCKusQU=";
    name = "stack-of-tasks-tsid-e894ee22b408c8f63867049f49fec99f3d2e5a9f";
  });
in
{
  tsid = pkg "sha256-5mCeMSp//Yfzl24SZjTDYQ+IClqBE2lcSD3dZCKusQU=" ".";
}
