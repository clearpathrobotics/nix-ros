{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "media_export";
    rev = "3e6a0681420d4082e605e4905adc0894464c784e";
    hash = "sha256-HcvEzfSLJIp6SL2Xomrnjw8im1X/Tq8Y6ltWYk0JZvo=";
    name = "ros-media_export-3e6a0681420d4082e605e4905adc0894464c784e";
  });
in
{
  media_export = pkg "sha256-HcvEzfSLJIp6SL2Xomrnjw8im1X/Tq8Y6ltWYk0JZvo=" ".";
}
