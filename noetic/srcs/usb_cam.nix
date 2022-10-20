{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "usb_cam";
    rev = "3ce8ee1c47c03be37229bf5857ae9a309d8eb1e8";
    hash = "sha256-KmDRkHZi4KTfICauTEMpaN8J/tlxgLpCeMbu0iXhHfg=";
    name = "ros-drivers-usb_cam-3ce8ee1c47c03be37229bf5857ae9a309d8eb1e8";
  });
in
{
  usb_cam = pkg "sha256-KmDRkHZi4KTfICauTEMpaN8J/tlxgLpCeMbu0iXhHfg=" ".";
}
