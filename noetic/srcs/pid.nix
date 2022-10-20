{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "AndyZe";
    repo = "pid";
    rev = "8268b7250e40c33a08d7faa7706885eb317eadbd";
    hash = "sha256-0i+1ynL2y1kpMfcv5/pWgSAXShUvfAex25KGEzWkdWM=";
    name = "AndyZe-pid-8268b7250e40c33a08d7faa7706885eb317eadbd";
  });
in
{
  pid = pkg "sha256-0i+1ynL2y1kpMfcv5/pWgSAXShUvfAex25KGEzWkdWM=" ".";
}
