{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "boschresearch";
    repo = "fmilibrary_vendor";
    rev = "56f8207d787a216149bb028bbf7cc7f5503aba91";
    hash = "sha256-salz8a278J/12xD+DRPSFeJzfT1vscqZDtFV+xUYjxM=";
    name = "boschresearch-fmilibrary_vendor-56f8207d787a216149bb028bbf7cc7f5503aba91";
  });
in
{
  fmilibrary_vendor = pkg "sha256-salz8a278J/12xD+DRPSFeJzfT1vscqZDtFV+xUYjxM=" ".";
}
