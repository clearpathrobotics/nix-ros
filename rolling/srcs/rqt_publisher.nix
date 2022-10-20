{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_publisher";
    rev = "55d75d72d9c213de8fdec57c5d1647e1732f9744";
    hash = "sha256-joMKiOb/CpmBy4GypKvYizxQVlb4knuw+s4t+xSz7Uc=";
    name = "ros-visualization-rqt_publisher-55d75d72d9c213de8fdec57c5d1647e1732f9744";
  });
in
{
  rqt_publisher = pkg "sha256-joMKiOb/CpmBy4GypKvYizxQVlb4knuw+s4t+xSz7Uc=" ".";
}
