{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "yoshito-n-students";
    repo = "usb_cam_hardware";
    rev = "356aafb573bafe2702d433045de790fe4265d842";
    hash = "sha256-JeHqI7bldsJxOVQ4X0Bqw0X64Aunhjz87NG0DUJVIg4=";
    name = "yoshito-n-students-usb_cam_hardware-356aafb573bafe2702d433045de790fe4265d842";
  });
in
{
  usb_cam_controllers = pkg "sha256-AeQP7/+JBnWbWVmWI8sQNC1kLG0Fv0U8MP1LXzHv5J4=" "usb_cam_controllers";
  usb_cam_hardware = pkg "sha256-sbMcdzcS8+V/7fGgjsF3BqthlsYGk1IuVHHvIRMtQd4=" "usb_cam_hardware";
  usb_cam_hardware_interface = pkg "sha256-3mrsd55zRcTAzuxbzixk5cWKo1zqnDC5g0s97xZNSzg=" "usb_cam_hardware_interface";
}
