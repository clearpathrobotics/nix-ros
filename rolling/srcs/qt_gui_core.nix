{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "qt_gui_core";
    rev = "fd198c608afcb4c10263b9f4291e3631a47a4d8d";
    hash = "sha256-PnIeSei2JwFBHEPRVrVP85ryCwgkImRpOdnTXRyJuCA=";
    name = "ros-visualization-qt_gui_core-fd198c608afcb4c10263b9f4291e3631a47a4d8d";
  });
in
{
  qt_dotgraph = pkg "sha256-RAT8nPX/WfKXTzdSzzH7PKPh0pLUpZ7oRoduRsVF+C0=" "qt_dotgraph";
  qt_gui = pkg "sha256-bbGXjm7oWmZqALCkboI57Kb+fiLIMhx3FfF1AN2Yb+8=" "qt_gui";
  qt_gui_app = pkg "sha256-7gh4rJh7upgiq9VGPJWPEm79eF5dz4+o7BbmbgcpTy4=" "qt_gui_app";
  qt_gui_core = pkg "sha256-kyttV9LKeTo/Q23bLBIK89baz/suHoeiCRybphMIGGc=" "qt_gui_core";
  qt_gui_cpp = pkg "sha256-tudPF5fLA95eZVS/Pn6mIHvPb2Kds8fPUpYCJAvAhRY=" "qt_gui_cpp";
  qt_gui_py_common = pkg "sha256-DxlaiUX3jXruHH7KBo1iz246g06G7cCsq2lo+72e68M=" "qt_gui_py_common";
}
