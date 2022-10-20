{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mikeferguson";
    repo = "robot_calibration";
    rev = "193e1138aca38da51a0f0af81e8a1a596132fc27";
    hash = "sha256-mW1R8Fgpe0dgOkP/318aPhuQKnY+KuOTJxO+LgLpU2M=";
    name = "mikeferguson-robot_calibration-193e1138aca38da51a0f0af81e8a1a596132fc27";
  });
in
{
  robot_calibration = pkg "sha256-Fe4rsdaK2DPeiymz8htBxr8PKr0Ak8DuOc96e4S3fiQ=" "robot_calibration";
  robot_calibration_msgs = pkg "sha256-q8cNnd9Z38bsNIQq5pkq+lxAMpS8DJK0PWNdOyqV/Y4=" "robot_calibration_msgs";
}
