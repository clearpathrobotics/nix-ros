{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-gbp";
    repo = "stage-release";
    rev = "999f92a6c31633d729d5e90c086a266d85b4e0d3";
    hash = "sha256-I4psU8+xrEh2p3KAHkSjbhAYz+hzq7GOzqJ2/D6qwEE=";
    name = "ros-gbp-stage-release-999f92a6c31633d729d5e90c086a266d85b4e0d3";
  });
in
{
  stage = pkg "sha256-I4psU8+xrEh2p3KAHkSjbhAYz+hzq7GOzqJ2/D6qwEE=" ".";
}
