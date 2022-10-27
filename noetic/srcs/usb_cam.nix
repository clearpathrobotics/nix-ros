{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "usb_cam";
    rev = "37451954a7f73af99428b0712aaa609c11464b53";
    hash = "sha256-oiegkml8u02s86Oi1gkTgN5JzFNIoc/1QIurnL5HuaE=";
    name = "ros-drivers-usb_cam-37451954a7f73af99428b0712aaa609c11464b53";
  });
in
{
  usb_cam = pkg "sha256-oiegkml8u02s86Oi1gkTgN5JzFNIoc/1QIurnL5HuaE=" ".";
}
