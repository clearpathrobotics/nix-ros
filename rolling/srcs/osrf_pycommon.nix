{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "osrf";
    repo = "osrf_pycommon";
    rev = "77cf537c71d3b8e30fca38ae47b9bd7bd1c9d552";
    hash = "sha256-WOb6/i1cOZIE9P1ctUdvO+eo1paQrdrfwpxhIj2sbUI=";
    name = "osrf-osrf_pycommon-77cf537c71d3b8e30fca38ae47b9bd7bd1c9d552";
  });
in
{
  osrf_pycommon = pkg "sha256-WOb6/i1cOZIE9P1ctUdvO+eo1paQrdrfwpxhIj2sbUI=" ".";
}
