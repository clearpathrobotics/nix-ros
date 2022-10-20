{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "soccer_vision_3d_rviz_markers";
    rev = "70706fe2ff8bb584253e5c7624b5a4315e4bfa97";
    hash = "sha256-x3Ec6SCsYOyUASM8bkzeG/tRqDLq6QRkmCWIinjKT5I=";
    name = "ros-sports-soccer_vision_3d_rviz_markers-70706fe2ff8bb584253e5c7624b5a4315e4bfa97";
  });
in
{
  soccer_vision_3d_rviz_markers = pkg "sha256-x3Ec6SCsYOyUASM8bkzeG/tRqDLq6QRkmCWIinjKT5I=" ".";
}
