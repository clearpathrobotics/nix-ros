{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "splintered-reality";
    repo = "py_trees_ros_interfaces";
    rev = "e6a5f37a1d7752ca74be9682c82ec01f5b4bf3d5";
    hash = "sha256-/YAn9axu8hgAg09ST4zfeqgKuT03Ar4oCl3A9wNUdWg=";
    name = "splintered-reality-py_trees_ros_interfaces-e6a5f37a1d7752ca74be9682c82ec01f5b4bf3d5";
  });
in
{
  py_trees_ros_interfaces = pkg "sha256-/YAn9axu8hgAg09ST4zfeqgKuT03Ar4oCl3A9wNUdWg=" ".";
}
