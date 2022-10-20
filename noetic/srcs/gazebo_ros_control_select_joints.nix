{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tu-darmstadt-ros-pkg";
    repo = "gazebo_ros_control_select_joints";
    rev = "b8daf2807476245c5c02a7c869b8c0487a3d4602";
    hash = "sha256-xthWwWVwN+s8gxV1J1wk6eQVQ2OQZ+dZNoWLarqgm5M=";
    name = "tu-darmstadt-ros-pkg-gazebo_ros_control_select_joints-b8daf2807476245c5c02a7c869b8c0487a3d4602";
  });
in
{
  gazebo_ros_control_select_joints = pkg "sha256-xthWwWVwN+s8gxV1J1wk6eQVQ2OQZ+dZNoWLarqgm5M=" ".";
}
