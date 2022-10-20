{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PilzDE";
    repo = "pilz_robots";
    rev = "94ac916b39cbf1070fee66e44a9f5556af215caa";
    hash = "sha256-gx61pH5/hvhCRMiXrDN1C3bFstdHFTbdSz+pojRGpCA=";
    name = "PilzDE-pilz_robots-94ac916b39cbf1070fee66e44a9f5556af215caa";
  });
in
{
  pilz_control = pkg "sha256-XIynkAndMNgNasgoc9PtI4lHaMhN9frd/tToAxjL8So=" "pilz_control";
  pilz_robots = pkg "sha256-NcU9CqJA8++QM7fAN7RnJLAGUcJMuY2Dv9UdaYxu14s=" "pilz_robots";
  pilz_status_indicator_rqt = pkg "sha256-pEHVzWFdc1ktbaOUGyuzIQLQ8U7E8261CTPPQuRg8jE=" "pilz_status_indicator_rqt";
  prbt_gazebo = pkg "sha256-ZH++mpfc8kWmp505WVHvWkfL8WS9tag6ePBg18eKJoA=" "prbt_gazebo";
  prbt_hardware_support = pkg "sha256-Yj75GPcHTfrAo2P8hXwj9UTOzJ4mwOVPtTFXX7iOkkg=" "prbt_hardware_support";
  prbt_ikfast_manipulator_plugin = pkg "sha256-lggwhiJxLmvlKU11L7XGiPRXBKXp8GKD4vKa/74sm/Q=" "prbt_ikfast_manipulator_plugin";
  prbt_moveit_config = pkg "sha256-uMTTKOOOp6ywG+smOT/07fju3NPZyk7JVPiQKErJE+U=" "prbt_moveit_config";
  prbt_support = pkg "sha256-7M9+vHiwt11EX5Ch5o5N//JBlCgvqbm1Cly5BIjLRM4=" "prbt_support";
}
