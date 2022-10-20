{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PilzDE";
    repo = "psen_scan_v2";
    rev = "e3ec10986203d7b9341341d212262753a943e819";
    hash = "sha256-iQn8xt8n+LNPJ9ggtEuInuMx9Y+LY4mQjavixv5h4SI=";
    name = "PilzDE-psen_scan_v2-e3ec10986203d7b9341341d212262753a943e819";
  });
in
{
  psen_scan_v2 = pkg "sha256-iQn8xt8n+LNPJ9ggtEuInuMx9Y+LY4mQjavixv5h4SI=" ".";
}
