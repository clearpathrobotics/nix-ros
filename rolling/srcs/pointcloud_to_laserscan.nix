{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "pointcloud_to_laserscan";
    rev = "272ca4df83ae5faef5df9d4fe6bd90a872360c16";
    hash = "sha256-fI++zTnKlxDBXrC19mw4sH3fNQJP2ucCs8GAbpqqcxU=";
    name = "ros-perception-pointcloud_to_laserscan-272ca4df83ae5faef5df9d4fe6bd90a872360c16";
  });
in
{
  pointcloud_to_laserscan = pkg "sha256-fI++zTnKlxDBXrC19mw4sH3fNQJP2ucCs8GAbpqqcxU=" ".";
}
