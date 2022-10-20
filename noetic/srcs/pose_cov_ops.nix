{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt-ros-pkg";
    repo = "pose_cov_ops";
    rev = "cc9652f16d1cba4a8a41fe0bb862692207400e64";
    hash = "sha256-IGRYrXx1uuYRrFvJeSBXTt5/A7P5QO5TRq1lC3EmwHg=";
    name = "mrpt-ros-pkg-pose_cov_ops-cc9652f16d1cba4a8a41fe0bb862692207400e64";
  });
in
{
  pose_cov_ops = pkg "sha256-IGRYrXx1uuYRrFvJeSBXTt5/A7P5QO5TRq1lC3EmwHg=" ".";
}
