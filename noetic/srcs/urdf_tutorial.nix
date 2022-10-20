{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdf_tutorial";
    rev = "21a6ecdff0146ad93852cf32e8f494439fd99065";
    hash = "sha256-a3DIFk+iNu2YPvRZltEvEVrBh5GbvsAV2LMa0ArMCoo=";
    name = "ros-urdf_tutorial-21a6ecdff0146ad93852cf32e8f494439fd99065";
  });
in
{
  urdf_tutorial = pkg "sha256-a3DIFk+iNu2YPvRZltEvEVrBh5GbvsAV2LMa0ArMCoo=" ".";
}
