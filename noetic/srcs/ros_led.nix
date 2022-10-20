{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "CopterExpress";
    repo = "ros_led";
    rev = "a176427febe96af56252bec6629e76d1460d5839";
    hash = "sha256-suKvIwIbg1sdtM0aWQ8UlBV/n5fhtTLgPQzYTbCJZAU=";
    name = "CopterExpress-ros_led-a176427febe96af56252bec6629e76d1460d5839";
  });
in
{
  led_msgs = pkg "sha256-BYm/bKZEBMGR/MdYNC5aN+pcyPyOQxcsJcaEtJHPVQU=" "led_msgs";
  ws281x = pkg "sha256-vYBnsiCWtdjczXwkUUdmK7fmmqyxBeQCmRLem//DHyw=" "ws281x";
}
