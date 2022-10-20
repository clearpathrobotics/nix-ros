{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_topic";
    rev = "ae815d18c83b028d3879f83e8da360f9d94288f2";
    hash = "sha256-NuRWT7IJ9id+F/xAWLnvtCRG81xXPLRrTfN+O3anFcw=";
    name = "ros-visualization-rqt_topic-ae815d18c83b028d3879f83e8da360f9d94288f2";
  });
in
{
  rqt_topic = pkg "sha256-NuRWT7IJ9id+F/xAWLnvtCRG81xXPLRrTfN+O3anFcw=" ".";
}
