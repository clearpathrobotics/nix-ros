{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "splintered-reality";
    repo = "py_trees_ros";
    rev = "fa4877eba975bb2d63cf3e623ece18894adb9156";
    hash = "sha256-MJP93BmpsZcU+9VNBplaQQBPbnFhPeWcaQARe22Savg=";
    name = "splintered-reality-py_trees_ros-fa4877eba975bb2d63cf3e623ece18894adb9156";
  });
in
{
  py_trees_ros = pkg "sha256-MJP93BmpsZcU+9VNBplaQQBPbnFhPeWcaQARe22Savg=" ".";
}
