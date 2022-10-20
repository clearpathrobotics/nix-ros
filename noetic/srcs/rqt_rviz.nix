{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_rviz";
    rev = "def41cdda055791bac9428e0488203f647fe0e10";
    hash = "sha256-64iZHlKeRIpNhZjBzdLCXTdmYX/RPinNrbO4gfBO7/c=";
    name = "ros-visualization-rqt_rviz-def41cdda055791bac9428e0488203f647fe0e10";
  });
in
{
  rqt_rviz = pkg "sha256-64iZHlKeRIpNhZjBzdLCXTdmYX/RPinNrbO4gfBO7/c=" ".";
}
