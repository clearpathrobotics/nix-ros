{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "robot_pose_ekf";
    rev = "fd6cef32b447e8b344a1111373e515aa2f8bfc50";
    hash = "sha256-ypQwUYTncVOdvLZ3ZQG9jb6LUsDyjFBfYechpwbR3is=";
    name = "ros-planning-robot_pose_ekf-fd6cef32b447e8b344a1111373e515aa2f8bfc50";
  });
in
{
  robot_pose_ekf = pkg "sha256-ypQwUYTncVOdvLZ3ZQG9jb6LUsDyjFBfYechpwbR3is=" ".";
}
