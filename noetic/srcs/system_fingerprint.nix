{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MetroRobots";
    repo = "ros_system_fingerprint";
    rev = "8911a12b4505a9b6a935aa30a82fe03db33d3c2a";
    hash = "sha256-sJWVOPQ+N77gZp34owWx+v8yuz2dIE4Lb/Zhkueinos=";
    name = "MetroRobots-ros_system_fingerprint-8911a12b4505a9b6a935aa30a82fe03db33d3c2a";
  });
in
{
  system_fingerprint = pkg "sha256-sJWVOPQ+N77gZp34owWx+v8yuz2dIE4Lb/Zhkueinos=" ".";
}
