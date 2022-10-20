{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt-ros-pkg";
    repo = "mrpt_slam";
    rev = "a89d5684a4a3d8016701f92ab7184e5589cb12ac";
    hash = "sha256-WsCXTi13WM2X9VthyRSgj+9iv/kFitDpUZmduU2gLOY=";
    name = "mrpt-ros-pkg-mrpt_slam-a89d5684a4a3d8016701f92ab7184e5589cb12ac";
  });
in
{
  mrpt_ekf_slam_2d = pkg "sha256-q2faEfHSNxSRvKamObd6fL/W+wtyEq3EAWsOxYKNa2Y=" "mrpt_ekf_slam_2d";
  mrpt_ekf_slam_3d = pkg "sha256-RNfgt8F0roxSnesaAQ2Hjvlim7z6LgEaIiQnFkGDylk=" "mrpt_ekf_slam_3d";
  mrpt_graphslam_2d = pkg "sha256-bQLAQpmoOCuFFyanE5l6SfY09IfTF/ngN998n3GtrhY=" "mrpt_graphslam_2d";
  mrpt_icp_slam_2d = pkg "sha256-t/38C6Yza035ClSuaapbL4YLCHxfUmPvS0FzCATog68=" "mrpt_icp_slam_2d";
  mrpt_rbpf_slam = pkg "sha256-LjpoxozlIpSG3bDorcpTUZUB0POgi3OomHLPj/hUWpY=" "mrpt_rbpf_slam";
  mrpt_slam = pkg "sha256-Yl3DZuNwbmiEEurcN1QRZ3xGp+1yuTyBqCr/jZuXJDA=" "mrpt_slam";
}
