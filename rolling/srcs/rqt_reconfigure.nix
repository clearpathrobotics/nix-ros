{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_reconfigure";
    rev = "50265f37c62d59f5107c5f5a653d19a92cbfd6f0";
    hash = "sha256-NniW5hZrnkPIuyFgdD6idKJFvsPWXSoLHvWPElen5ME=";
    name = "ros-visualization-rqt_reconfigure-50265f37c62d59f5107c5f5a653d19a92cbfd6f0";
  });
in
{
  rqt_reconfigure = pkg "sha256-NniW5hZrnkPIuyFgdD6idKJFvsPWXSoLHvWPElen5ME=" ".";
}
