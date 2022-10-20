{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "rqt_image_overlay";
    rev = "8dcfb30f6f9c6a83ec3f22fe52705cad47d853ae";
    hash = "sha256-2bhG1voI3Ce/Apcv9qecQDZqyUV+jt55ZpBt4cF4awc=";
    name = "ros-sports-rqt_image_overlay-8dcfb30f6f9c6a83ec3f22fe52705cad47d853ae";
  });
in
{
  rqt_image_overlay = pkg "sha256-PMZemQXcJ7rge4Th7+j/xmLeyxAJYTElY2T46iy8xxI=" "rqt_image_overlay";
  rqt_image_overlay_layer = pkg "sha256-AsjM1Lz9jMYIHH0AeIjOz9mcd4Mtk9Vz5Pn11JJkn9k=" "rqt_image_overlay_layer";
}
