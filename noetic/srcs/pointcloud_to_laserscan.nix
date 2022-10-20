{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "pointcloud_to_laserscan";
    rev = "bb361b4668308d80a1db78e34bccf1171a2d9a9b";
    hash = "sha256-maoZvhSC3vWvSmwCdy75yfp2QAoYTsmLbiG/9deT6AU=";
    name = "ros-perception-pointcloud_to_laserscan-bb361b4668308d80a1db78e34bccf1171a2d9a9b";
  });
in
{
  pointcloud_to_laserscan = pkg "sha256-maoZvhSC3vWvSmwCdy75yfp2QAoYTsmLbiG/9deT6AU=" ".";
}
