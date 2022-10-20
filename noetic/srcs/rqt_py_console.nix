{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_py_console";
    rev = "7cd828ca9b1bb44399b7871a2647c4c92d157fdd";
    hash = "sha256-RdwBBkLlvONSWAyUNQ3qC4/qbu4bEy4shUM7Pie9qUc=";
    name = "ros-visualization-rqt_py_console-7cd828ca9b1bb44399b7871a2647c4c92d157fdd";
  });
in
{
  rqt_py_console = pkg "sha256-RdwBBkLlvONSWAyUNQ3qC4/qbu4bEy4shUM7Pie9qUc=" ".";
}
