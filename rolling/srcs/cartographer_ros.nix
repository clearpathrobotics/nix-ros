{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "cartographer_ros";
    rev = "098e6bf8556070b9228b9fa7d5766238bc141a90";
    hash = "sha256-V21/rqKK0xzWyAR9qVcq3RAjmFlMepJz1yBGfK2sUvQ=";
    name = "ros2-cartographer_ros-098e6bf8556070b9228b9fa7d5766238bc141a90";
  });
in
{
  cartographer_ros = pkg "sha256-5zX0NFerwbD4JDZ85r4AeS7y5s6nL4mSVLxnHCWQXKI=" "cartographer_ros";
  cartographer_ros_msgs = pkg "sha256-ANRPJtqGaSasA10po2gdln9H83q4kgEUHIEVJALNgEk=" "cartographer_ros_msgs";
  cartographer_rviz = pkg "sha256-3RT9v1v/g5rj/7vGiqQI52l/LprLAdj/jH2mYk/ifQc=" "cartographer_rviz";
}
