{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "introlab";
    repo = "rtabmap_ros";
    rev = "5024574e4ab8df16d3b9d9731ea86761fbbeeb54";
    hash = "sha256-f8xvjD13yLQdaxi7LXlApwW8qWraDZ70JQ7xeqlYNxs=";
    name = "introlab-rtabmap_ros-5024574e4ab8df16d3b9d9731ea86761fbbeeb54";
  });
in
{
  rtabmap_ros = pkg "sha256-f8xvjD13yLQdaxi7LXlApwW8qWraDZ70JQ7xeqlYNxs=" ".";
}
