{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "wep21";
    repo = "bag2_to_image";
    rev = "1c4b48d5a537967229bbd1fec99c946682f4b4c8";
    hash = "sha256-D602KBwsYPh+wbNrK2y25DZk1/wPPc2PlZj4ktvPhqI=";
    name = "wep21-bag2_to_image-1c4b48d5a537967229bbd1fec99c946682f4b4c8";
  });
in
{
  bag2_to_image = pkg "sha256-D602KBwsYPh+wbNrK2y25DZk1/wPPc2PlZj4ktvPhqI=" ".";
}
