{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fetchrobotics";
    repo = "fetch_open_auto_dock";
    rev = "a390acc81490789dcc00165b195ebcebb1447649";
    hash = "sha256-1Rpt2gONlcKAuEP+0QpBHsUdnoI3fCAGrBzbt+u5t6o=";
    name = "fetchrobotics-fetch_open_auto_dock-a390acc81490789dcc00165b195ebcebb1447649";
  });
in
{
  fetch_open_auto_dock = pkg "sha256-1Rpt2gONlcKAuEP+0QpBHsUdnoI3fCAGrBzbt+u5t6o=" ".";
}
