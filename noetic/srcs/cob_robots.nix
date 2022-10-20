{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_robots";
    rev = "93139cf4fd9853688dcc15551084c0007fe34872";
    hash = "sha256-ho6R3y6AN9ekePAg0zV4lBSMaoLMfFYcnQ9kvqMj3Js=";
    name = "ipa320-cob_robots-93139cf4fd9853688dcc15551084c0007fe34872";
  });
in
{
  cob_bringup = pkg "sha256-0nv0LKBSNch2bW/nmSBe+UMqC8h6qgDDykGTZ2/SxA4=" "cob_bringup";
  cob_default_robot_behavior = pkg "sha256-eOZnb6qwxjuHs19r6g9fYKAY+ho19DQAzad2HZyQtLQ=" "cob_default_robot_behavior";
  cob_default_robot_config = pkg "sha256-ONhMybnCiKtAjU+HYSLKCIbiFZ60KcnHRp34UxH5PSI=" "cob_default_robot_config";
  cob_hardware_config = pkg "sha256-EbXhc6jgvB6tbhy9tyur3NBgLKw0gB6OewYp5bgb7gk=" "cob_hardware_config";
  cob_moveit_config = pkg "sha256-1NP3KGqltNlmZFS88RTFJkqw4YSbFMnAxFtUEyNuQz0=" "cob_moveit_config";
  cob_robots = pkg "sha256-IRhM8Y1RkePdo32xvr3rXorLCLTCSsF5BuINJOwsMbM=" "cob_robots";
}
