{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_srv";
    rev = "28cd04e583875c53de78084a873ac42920abb8d3";
    hash = "sha256-Jv/6lxXlyzb72XmJ4cz5XVBB4JbXfLomCvb5bPuEaHM=";
    name = "ros-visualization-rqt_srv-28cd04e583875c53de78084a873ac42920abb8d3";
  });
in
{
  rqt_srv = pkg "sha256-Jv/6lxXlyzb72XmJ4cz5XVBB4JbXfLomCvb5bPuEaHM=" ".";
}
