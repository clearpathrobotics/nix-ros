{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "warehouse_ros_mongo";
    rev = "e1615a3f5eb09638c1d4853b475aa31098371950";
    hash = "sha256-/JNq696s4FO1vM5jSUxTtg5qzG+D0Eb0A52OAua0jk0=";
    name = "ros-planning-warehouse_ros_mongo-e1615a3f5eb09638c1d4853b475aa31098371950";
  });
in
{
  warehouse_ros_mongo = pkg "sha256-/JNq696s4FO1vM5jSUxTtg5qzG+D0Eb0A52OAua0jk0=" ".";
}
