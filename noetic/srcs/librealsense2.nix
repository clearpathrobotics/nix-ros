{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "IntelRealSense";
    repo = "librealsense";
    rev = "923253f645e867c75e3c6c30a84127f41d82f3e9";
    hash = "sha256-1ExeTpNloGbZC2rUA21My2PmH34+fbrWTx4VnwlzgC8=";
    name = "IntelRealSense-librealsense-923253f645e867c75e3c6c30a84127f41d82f3e9";
  });
in
{
  librealsense2 = pkg "sha256-1ExeTpNloGbZC2rUA21My2PmH34+fbrWTx4VnwlzgC8=" ".";
}
