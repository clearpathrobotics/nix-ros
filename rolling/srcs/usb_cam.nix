{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "usb_cam";
    rev = "f57957c6e408fe6b8843f13d768b139ebeb50b75";
    hash = "sha256-+n8tLIdom4c6YuDUe198GyEajcQv2QBbhhN7DB6LQxk=";
    name = "ros-drivers-usb_cam-f57957c6e408fe6b8843f13d768b139ebeb50b75";
  });
in
{
  usb_cam = pkg "sha256-+n8tLIdom4c6YuDUe198GyEajcQv2QBbhhN7DB6LQxk=" ".";
}
