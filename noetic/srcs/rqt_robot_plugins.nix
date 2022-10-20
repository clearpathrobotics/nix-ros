{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_robot_plugins";
    rev = "6e17809606f7e60c67039582b971e04bbbaa5b4c";
    hash = "sha256-kFyLaeo+gE/Qfxr7ttptLi9pKyV/qBrugvhwA8GHED8=";
    name = "ros-visualization-rqt_robot_plugins-6e17809606f7e60c67039582b971e04bbbaa5b4c";
  });
in
{
  rqt_robot_plugins = pkg "sha256-kFyLaeo+gE/Qfxr7ttptLi9pKyV/qBrugvhwA8GHED8=" ".";
}
