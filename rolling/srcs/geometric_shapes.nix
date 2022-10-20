{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "geometric_shapes";
    rev = "8699136b116ad4aa32fa1367a93f1a496005f2c5";
    hash = "sha256-jln+buRoVUPBC3RutfTM4QREKzLpOch+6eF58hH1lfs=";
    name = "ros-planning-geometric_shapes-8699136b116ad4aa32fa1367a93f1a496005f2c5";
  });
in
{
  geometric_shapes = pkg "sha256-jln+buRoVUPBC3RutfTM4QREKzLpOch+6eF58hH1lfs=" ".";
}
