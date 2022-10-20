{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "flir_camera_driver";
    rev = "45189ae5d9ef21b514e4d62a53d1259505228227";
    hash = "sha256-6f5t1n+/BumvKfg4/fs8mYOggUQYvMG3H+1cIkd+yyM=";
    name = "ros-drivers-flir_camera_driver-45189ae5d9ef21b514e4d62a53d1259505228227";
  });
in
{
  flir_camera_description = pkg "sha256-vYzKb/A0QgOewGMN1l+ibHKhSD2fKOky+QkQJChVvps=" "flir_camera_description";
  flir_camera_driver = pkg "sha256-rzOUli+sMOwgZPPkEbfKVjT6LoDktUjjqoNYhPsweGw=" "flir_camera_driver";
  spinnaker_camera_driver = pkg "sha256-YLcyvZYBC0Wk/vDT8YMIEkCwHbYSD5HAnYq6Ie4VMyo=" "spinnaker_camera_driver";
}
