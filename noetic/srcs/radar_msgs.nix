{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "radar_msgs";
    rev = "bfd6d5487405500957dfa1b39a7e513ec172536a";
    hash = "sha256-Nnnd/cLwjYfcMuRjr9iu0/UF6Jug+9tBkny8qWFLY4U=";
    name = "ros-perception-radar_msgs-bfd6d5487405500957dfa1b39a7e513ec172536a";
  });
in
{
  radar_msgs = pkg "sha256-Nnnd/cLwjYfcMuRjr9iu0/UF6Jug+9tBkny8qWFLY4U=" ".";
}
