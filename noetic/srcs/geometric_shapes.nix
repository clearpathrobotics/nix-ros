{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "geometric_shapes";
    rev = "0991e05d2ddc8007691b3ee907814f3f95f111f7";
    hash = "sha256-2G1QSz3bNDWV4yQGCVMedQFSGjXt8DF3qyCPSgJXG8U=";
    name = "ros-planning-geometric_shapes-0991e05d2ddc8007691b3ee907814f3f95f111f7";
  });
in
{
  geometric_shapes = pkg "sha256-2G1QSz3bNDWV4yQGCVMedQFSGjXt8DF3qyCPSgJXG8U=" ".";
}
