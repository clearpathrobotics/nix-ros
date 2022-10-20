{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "boldhearts";
    repo = "ros2_v4l2_camera";
    rev = "8db2609c52d0b6153ae5c075e0dfe23ca7ae1a33";
    hash = "sha256-6S98n6I3/xURpJWEnmj4IbQ1MRqpVmM45olPZget7ac=";
    name = "boldhearts-ros2_v4l2_camera-8db2609c52d0b6153ae5c075e0dfe23ca7ae1a33";
  });
in
{
  v4l2_camera = pkg "sha256-6S98n6I3/xURpJWEnmj4IbQ1MRqpVmM45olPZget7ac=" ".";
}
