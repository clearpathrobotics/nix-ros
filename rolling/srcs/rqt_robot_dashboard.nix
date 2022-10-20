{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_robot_dashboard";
    rev = "fee02b9fab83734f01b58e2a2333e7bd963a6cf8";
    hash = "sha256-h7cf3+imm3zAddfx8a2omMn20Y/yI71fXiL0OotrRf0=";
    name = "ros-visualization-rqt_robot_dashboard-fee02b9fab83734f01b58e2a2333e7bd963a6cf8";
  });
in
{
  rqt_robot_dashboard = pkg "sha256-h7cf3+imm3zAddfx8a2omMn20Y/yI71fXiL0OotrRf0=" ".";
}
