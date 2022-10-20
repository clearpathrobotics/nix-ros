{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "diagnostics";
    rev = "4be469adc629047978b095868571240cad4dba8f";
    hash = "sha256-rRqn3va+/91jzg3+G1dUFqUrj07j4SrswJZ0WVNon5w=";
    name = "ros-diagnostics-4be469adc629047978b095868571240cad4dba8f";
  });
in
{
  diagnostic_aggregator = pkg "sha256-PJCqvMIz/qLvpokbLyRogCO3QKm5SSlUzQhJthFZX9k=" "diagnostic_aggregator";
  diagnostic_analysis = pkg "sha256-UJ09lK86LZlNm+ecYohGZ+nWn+wsVSGnlBE8oL+Qwxo=" "diagnostic_analysis";
  diagnostic_common_diagnostics = pkg "sha256-HzZLlomLJKAGLVVDMBjIkMlselffTpMstMrkzq99s5A=" "diagnostic_common_diagnostics";
  diagnostic_updater = pkg "sha256-NBOxLpOrSFRpSaxlR0me1r/8Uv73VzMjyxSeh+ikGyU=" "diagnostic_updater";
  diagnostics = pkg "sha256-GFunp91GV5RcTZGwHV0zAJOr53mA7HS0ljp7q3RVO2E=" "diagnostics";
  rosdiagnostic = pkg "sha256-OBnSkIImT0cNmxuljUP0KmB3pOQGnruKDcLciM4eLZE=" "rosdiagnostic";
  self_test = pkg "sha256-Kp/xjhEExcIXWuLscr7SqFe4c99FKmSemIp+LrspfYY=" "self_test";
  test_diagnostic_aggregator = pkg "sha256-PBTFq6CzuCo1wtukatuVPB1MuFhMcemrRFVPIL53kgU=" "test_diagnostic_aggregator";
}
