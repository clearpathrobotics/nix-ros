{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_genicam_camera";
    rev = "b3eedcc77be96b38eac5cb6fd9843e0e366a869a";
    hash = "sha256-5+tsrYNC6pdvK0Khk0+KripkieukqvzUdkdjrdWnoFM=";
    name = "roboception-rc_genicam_camera-b3eedcc77be96b38eac5cb6fd9843e0e366a869a";
  });
in
{
  rc_genicam_camera = pkg "sha256-5+tsrYNC6pdvK0Khk0+KripkieukqvzUdkdjrdWnoFM=" ".";
}
