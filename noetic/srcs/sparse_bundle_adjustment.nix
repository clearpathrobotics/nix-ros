{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "sparse_bundle_adjustment";
    rev = "1714ec8fa9342ad7f1e58540d93b3481d572de7f";
    hash = "sha256-875J1dmacTFSy9Vsc5exd/cQL747NpnDqFiz+zdnezI=";
    name = "ros-perception-sparse_bundle_adjustment-1714ec8fa9342ad7f1e58540d93b3481d572de7f";
  });
in
{
  sparse_bundle_adjustment = pkg "sha256-875J1dmacTFSy9Vsc5exd/cQL747NpnDqFiz+zdnezI=" ".";
}
