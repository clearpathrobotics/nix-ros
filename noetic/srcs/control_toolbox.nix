{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "control_toolbox";
    rev = "de05a5c282f98f761fb162cc4206a94f7003c9a3";
    hash = "sha256-5aC3UgF2aRZzRPimC0rvSp06O4TiOPzVyeftb9fwG1Q=";
    name = "ros-controls-control_toolbox-de05a5c282f98f761fb162cc4206a94f7003c9a3";
  });
in
{
  control_toolbox = pkg "sha256-5aC3UgF2aRZzRPimC0rvSp06O4TiOPzVyeftb9fwG1Q=" ".";
}
