{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "RSL";
    rev = "87fd3acff16194d2683d3e2ab534ceff6ff454f5";
    hash = "sha256-sxH3Qr0qJFFC6KoknTHMFEWaA2fw9vx0i/tcp8b+wdI=";
    name = "PickNikRobotics-RSL-87fd3acff16194d2683d3e2ab534ceff6ff454f5";
  });
in
{
  rsl = pkg "sha256-sxH3Qr0qJFFC6KoknTHMFEWaA2fw9vx0i/tcp8b+wdI=" ".";
}
