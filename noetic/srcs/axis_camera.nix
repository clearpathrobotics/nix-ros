{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "axis_camera";
    rev = "5b97c57ff15b1f313230017da2f43421c984c030";
    hash = "sha256-rlq2nIaHcPp5JASUvrf9xEE1RmcZkCAnpgtmj1y+VVk=";
    name = "ros-drivers-axis_camera-5b97c57ff15b1f313230017da2f43421c984c030";
  });
in
{
  axis_camera = pkg "sha256-rlq2nIaHcPp5JASUvrf9xEE1RmcZkCAnpgtmj1y+VVk=" ".";
}
