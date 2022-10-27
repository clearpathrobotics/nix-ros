{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_action";
    rev = "d92822ced8a41fc3f45ca72345f4a556072af1a4";
    hash = "sha256-JePe+SnDfEHarXLlkpSEX3WJTsJbtI2ABT0uDdr1lEU=";
    name = "ros-visualization-rqt_action-d92822ced8a41fc3f45ca72345f4a556072af1a4";
  });
in
{
  rqt_action = pkg "sha256-JePe+SnDfEHarXLlkpSEX3WJTsJbtI2ABT0uDdr1lEU=" ".";
}
