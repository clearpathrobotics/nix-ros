{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_msg";
    rev = "e9689e3b87a54d214623dbd1863a3b103b36de14";
    hash = "sha256-hrI9MpWKg2FosleOEqx56VxFweTC0PHMYHGOtKaBXCg=";
    name = "ros-visualization-rqt_msg-e9689e3b87a54d214623dbd1863a3b103b36de14";
  });
in
{
  rqt_msg = pkg "sha256-hrI9MpWKg2FosleOEqx56VxFweTC0PHMYHGOtKaBXCg=" ".";
}
