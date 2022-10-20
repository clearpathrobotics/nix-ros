{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "astuff";
    repo = "avt_vimba_camera";
    rev = "dbf72afc8b05526236262158f06a0dae81c9b91e";
    hash = "sha256-YXimWf6V6MceUQ2zTbvutRK59ENbvRms7qwzkPo/Y0M=";
    name = "astuff-avt_vimba_camera-dbf72afc8b05526236262158f06a0dae81c9b91e";
  });
in
{
  avt_vimba_camera = pkg "sha256-YXimWf6V6MceUQ2zTbvutRK59ENbvRms7qwzkPo/Y0M=" ".";
}
