{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fkie";
    repo = "potree_rviz_plugin";
    rev = "883c305dd924b8c8ae35c192c087f2bb25899f8d";
    hash = "sha256-/r8LdlQCEjJGm3CnISy/+30jTAMH5h/tXc5EEdYzKw8=";
    name = "fkie-potree_rviz_plugin-883c305dd924b8c8ae35c192c087f2bb25899f8d";
  });
in
{
  fkie_potree_rviz_plugin = pkg "sha256-LO+J2VRIFWPO0u0i1znm3xHrGMKjdimulIXHD/r22A0=" "fkie_potree_rviz_plugin";
}
