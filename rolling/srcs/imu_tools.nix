{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "CCNYRoboticsLab";
    repo = "imu_tools";
    rev = "c1ed30986e2d2a6bc0a4e009a62ee7a3f35f26ad";
    hash = "sha256-XngITyyWilj7g5RsUMLhCIzrpa7tlJ4o4OMMzjPjzxw=";
    name = "CCNYRoboticsLab-imu_tools-c1ed30986e2d2a6bc0a4e009a62ee7a3f35f26ad";
  });
in
{
  imu_complementary_filter = pkg "sha256-yE6I671cAknkdPj3J3SiNYndfOkVxB2PonM46Hl4jQA=" "imu_complementary_filter";
  imu_filter_madgwick = pkg "sha256-j0Zgj3LI5hLTBhpCtY+t9M8gPxYwq4NPnIm48qfPZ4A=" "imu_filter_madgwick";
  imu_tools = pkg "sha256-yOBF1tQmy5OxifwjD+UjOH9ES4Huxrr+gYcxCEFtMIM=" "imu_tools";
  rviz_imu_plugin = pkg "sha256-nhb/3zKFjsgcz32yLfWoPIZkeY8Sj1bSWslTg1ppnyE=" "rviz_imu_plugin";
}
