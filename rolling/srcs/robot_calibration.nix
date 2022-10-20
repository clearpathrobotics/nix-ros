{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mikeferguson";
    repo = "robot_calibration";
    rev = "d39fd129c3d5fc44b2220eed5fee52aa8022a2c9";
    hash = "sha256-I77ywDARwdVJKXw27av7iQcBLIpaA109xjiuT2GYyOA=";
    name = "mikeferguson-robot_calibration-d39fd129c3d5fc44b2220eed5fee52aa8022a2c9";
  });
in
{
  robot_calibration = pkg "sha256-SIcKqrFm8vTYpNLq+ftEvvPZp+OpB4HdyLckBn1ASac=" "robot_calibration";
  robot_calibration_msgs = pkg "sha256-DTC4fHYediXuBlv9ZfjpeWB0ynuOhiQcJyCxBN1Ob+s=" "robot_calibration_msgs";
}
