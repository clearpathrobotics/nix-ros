{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rt-net";
    repo = "rt_usb_9axisimu_driver";
    rev = "ba6d56f7f80fed699a6d47480b88f675e589185d";
    hash = "sha256-YNW+cIr2LWlHUAB5rygmTm/Wm6/u5Kry1/A9/orpGtg=";
    name = "rt-net-rt_usb_9axisimu_driver-ba6d56f7f80fed699a6d47480b88f675e589185d";
  });
in
{
  rt_usb_9axisimu_driver = pkg "sha256-YNW+cIr2LWlHUAB5rygmTm/Wm6/u5Kry1/A9/orpGtg=" ".";
}
