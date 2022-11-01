{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "rosbag2_storage_mcap";
    rev = "4a05a2d1750fb3ec22f2c68c0bb5901297a17170";
    hash = "sha256-EjGOuN6o9QCyAEnEwLg8RkVYrWNlKp1SDuxUiCpdiRI=";
    name = "ros-tooling-rosbag2_storage_mcap-4a05a2d1750fb3ec22f2c68c0bb5901297a17170";
  });
in
{
  mcap_vendor = pkg "sha256-e9z+HzU/Qw73rtTdUsZhcfbxLTY11mU3+rgNgXEyFPo=" "mcap_vendor";
  rosbag2_storage_mcap = pkg "sha256-lS0VMElBpxUx8jFu/i9p+NqM8WFnVdBphnGOwYKiTM0=" "rosbag2_storage_mcap";
  rosbag2_storage_mcap_testdata = pkg "sha256-7vQie/P9VlPh+cSpAJFUKlgmrhkBi1lBqj6wIP/NMPs=" "rosbag2_storage_mcap_testdata";
}
