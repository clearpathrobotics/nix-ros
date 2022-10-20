{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AIS-Bonn";
    repo = "rot_conv_lib";
    rev = "ccd4764749752cdb0042ab3fc48b836b8f73ae7d";
    hash = "sha256-XLVmBL7n5Pvwwj4JpnAGOC6UsfLZbzPUzE+DGIniLOM=";
    name = "AIS-Bonn-rot_conv_lib-ccd4764749752cdb0042ab3fc48b836b8f73ae7d";
  });
in
{
  rotconv = pkg "sha256-XLVmBL7n5Pvwwj4JpnAGOC6UsfLZbzPUzE+DGIniLOM=" ".";
}
