{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "beltransen";
    repo = "velo2cam_gazebo";
    rev = "0038c022dc5fe2983783448d9c61e553713fa289";
    hash = "sha256-NGClgnzVzvh5U7dEfYJSsxkUcaC6eNOlf3Gfv6rxMeI=";
    name = "beltransen-velo2cam_gazebo-0038c022dc5fe2983783448d9c61e553713fa289";
  });
in
{
  velo2cam_gazebo = pkg "sha256-91yMJ0+guxuXQK7NUQQOBPWCvbG5tdDTd598xLhng50=" "velo2cam_gazebo";
  velodyne_gazebo_plugin = pkg "sha256-GiR256SGLFkBgldBDflUcArzG4atruUes/6/VgH102I=" "gazebo_plugins/velodyne_gazebo_plugin";
}
