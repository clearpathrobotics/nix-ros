{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_console";
    rev = "0eb12690ca567c310ff1f097f54ca416257f36d1";
    hash = "sha256-UN0vQ14Qc2aQp4Ay10sFWkJVglbNwxkm/dZreLrZeNU=";
    name = "ros-visualization-rqt_console-0eb12690ca567c310ff1f097f54ca416257f36d1";
  });
in
{
  rqt_console = pkg "sha256-UN0vQ14Qc2aQp4Ay10sFWkJVglbNwxkm/dZreLrZeNU=" ".";
}
