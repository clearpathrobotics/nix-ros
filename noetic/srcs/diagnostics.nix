{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "diagnostics";
    rev = "d27f3fff472e466ee2f0ab70a9d2001e0d2a09e6";
    hash = "sha256-gUMgxxFGVsvUS8/gWoFuqo2ylDRDkTTLnMosKW6Cz9c=";
    name = "ros-diagnostics-d27f3fff472e466ee2f0ab70a9d2001e0d2a09e6";
  });
in
{
  diagnostic_aggregator = pkg "sha256-PJCqvMIz/qLvpokbLyRogCO3QKm5SSlUzQhJthFZX9k=" "diagnostic_aggregator";
  diagnostic_analysis = pkg "sha256-UJ09lK86LZlNm+ecYohGZ+nWn+wsVSGnlBE8oL+Qwxo=" "diagnostic_analysis";
  diagnostic_common_diagnostics = pkg "sha256-beU2/cxl5CyDANvRRnQsOQSxZm7eu+gyFRCAgOkC1UE=" "diagnostic_common_diagnostics";
  diagnostic_updater = pkg "sha256-NBOxLpOrSFRpSaxlR0me1r/8Uv73VzMjyxSeh+ikGyU=" "diagnostic_updater";
  diagnostics = pkg "sha256-GFunp91GV5RcTZGwHV0zAJOr53mA7HS0ljp7q3RVO2E=" "diagnostics";
  rosdiagnostic = pkg "sha256-OBnSkIImT0cNmxuljUP0KmB3pOQGnruKDcLciM4eLZE=" "rosdiagnostic";
  self_test = pkg "sha256-Kp/xjhEExcIXWuLscr7SqFe4c99FKmSemIp+LrspfYY=" "self_test";
  test_diagnostic_aggregator = pkg "sha256-PBTFq6CzuCo1wtukatuVPB1MuFhMcemrRFVPIL53kgU=" "test_diagnostic_aggregator";
}
