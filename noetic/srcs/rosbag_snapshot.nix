{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "rosbag_snapshot";
    rev = "04b04792f48e67a4a97ed7d28157d736ac3198c4";
    hash = "sha256-+4VXp0gQWYqPYiHlsG3kT315c9WFmqOS+00IuWU3bhQ=";
    name = "ros-rosbag_snapshot-04b04792f48e67a4a97ed7d28157d736ac3198c4";
  });
in
{
  rosbag_snapshot = pkg "sha256-edqGPY5C+67t9+vfvrkVCx87Porq5nIAGIlU2aihRRM=" "rosbag_snapshot";
  rosbag_snapshot_msgs = pkg "sha256-SHHdVyr5zYyIyNnHyeJ+/GM8ohYgljDREbpKQAaxz3g=" "rosbag_snapshot_msgs";
}
