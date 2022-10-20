{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "depthimage_to_laserscan";
    rev = "7b60f8d3396a8e5904f27ac5d910366627a42394";
    hash = "sha256-78wBUEKQKzkYkiwVZwDfRT4p9SfD7qsig9wFuAMoSLo=";
    name = "ros-perception-depthimage_to_laserscan-7b60f8d3396a8e5904f27ac5d910366627a42394";
  });
in
{
  depthimage_to_laserscan = pkg "sha256-78wBUEKQKzkYkiwVZwDfRT4p9SfD7qsig9wFuAMoSLo=" ".";
}
