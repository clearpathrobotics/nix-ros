{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "usb_cam";
    rev = "3ba87bcb89ce6fbaf5f1bf62c029bcaecc5aff2a";
    hash = "sha256-jr+kvpJMb6GA6cn+wmYhVvQbRQ8VXgGAWftwk4nbFA0=";
    name = "ros-drivers-usb_cam-3ba87bcb89ce6fbaf5f1bf62c029bcaecc5aff2a";
  });
in
{
  usb_cam = pkg "sha256-jr+kvpJMb6GA6cn+wmYhVvQbRQ8VXgGAWftwk4nbFA0=" ".";
}
