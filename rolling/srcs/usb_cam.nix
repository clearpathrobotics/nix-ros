{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "usb_cam";
    rev = "6e0e9a36c1d5a5a0cf91ec15155a99854611e521";
    hash = "sha256-5ryX7J8JK5pHV0hOk/YNOQ1/0m4Z5kysZub7MXGIq8c=";
    name = "ros-drivers-usb_cam-6e0e9a36c1d5a5a0cf91ec15155a99854611e521";
  });
in
{
  usb_cam = pkg "sha256-5ryX7J8JK5pHV0hOk/YNOQ1/0m4Z5kysZub7MXGIq8c=" ".";
}
