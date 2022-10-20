{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "view_controller_msgs";
    rev = "b6709181a5d9a2d949cc6e8afb0d2aca1095ceec";
    hash = "sha256-HVswly+YiZAEVU8VXD/fq/u/HBI7ZG71PHm4e3OD1vM=";
    name = "ros-visualization-view_controller_msgs-b6709181a5d9a2d949cc6e8afb0d2aca1095ceec";
  });
in
{
  view_controller_msgs = pkg "sha256-HVswly+YiZAEVU8VXD/fq/u/HBI7ZG71PHm4e3OD1vM=" ".";
}
