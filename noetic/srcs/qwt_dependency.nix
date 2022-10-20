{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "qwt_dependency";
    rev = "91d8aeefb791b3e1c30a94e3babfc12fca5d0a70";
    hash = "sha256-wjzCe+u/YYrSHfc0LA90AcsG0MBD00GXxrvktNiFYgM=";
    name = "ros-visualization-qwt_dependency-91d8aeefb791b3e1c30a94e3babfc12fca5d0a70";
  });
in
{
  qwt_dependency = pkg "sha256-wjzCe+u/YYrSHfc0LA90AcsG0MBD00GXxrvktNiFYgM=" ".";
}
