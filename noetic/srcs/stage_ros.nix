{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-simulation";
    repo = "stage_ros";
    rev = "c3abc19b9e9713fe450597ca33b6f5399d1691ca";
    hash = "sha256-8bbGlBh9XX011t6eEvuUe/SmEgQdCpY5VW3n14qqY0Q=";
    name = "ros-simulation-stage_ros-c3abc19b9e9713fe450597ca33b6f5399d1691ca";
  });
in
{
  stage_ros = pkg "sha256-8bbGlBh9XX011t6eEvuUe/SmEgQdCpY5VW3n14qqY0Q=" ".";
}
