{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "crigroup";
    repo = "baldor";
    rev = "cdc58aa941e170108458c885cc481576204d108f";
    hash = "sha256-AjyufZcxFQ/UO546/7DpSaFirAOCi1Y2T+An2yS7Co8=";
    name = "crigroup-baldor-cdc58aa941e170108458c885cc481576204d108f";
  });
in
{
  baldor = pkg "sha256-AjyufZcxFQ/UO546/7DpSaFirAOCi1Y2T+An2yS7Co8=" ".";
}
