{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_moveit";
    rev = "6eddbfb785e8c959310c91ca9acb451bc9d86d67";
    hash = "sha256-VvDyS9jUT6R6yXThFcmrzP+96ef4V7uiZHPO/+bEVjA=";
    name = "ros-visualization-rqt_moveit-6eddbfb785e8c959310c91ca9acb451bc9d86d67";
  });
in
{
  rqt_moveit = pkg "sha256-VvDyS9jUT6R6yXThFcmrzP+96ef4V7uiZHPO/+bEVjA=" ".";
}
