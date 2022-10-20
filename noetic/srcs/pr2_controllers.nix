{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_controllers";
    rev = "edf4cab32e6a803f97f19545f782f970c17ea94c";
    hash = "sha256-qBk2d8ffGA4KESR5P3uFAi2ztx42S8tP0DA3m0M9woY=";
    name = "pr2-pr2_controllers-edf4cab32e6a803f97f19545f782f970c17ea94c";
  });
in
{
  ethercat_trigger_controllers = pkg "sha256-YJMLlFQI+Ao5BlXb0czCy7Wb0S1tRsRbisEImyrvIHg=" "ethercat_trigger_controllers";
  joint_trajectory_action = pkg "sha256-lT+aP3Vj/QKlHnkH1lSeyO9w3oglb0UpW1InwMD5g0A=" "joint_trajectory_action";
  pr2_calibration_controllers = pkg "sha256-xNihhQUis7zOI9Z5HY+KLXZaSMYCeObVHCdw0REAXVM=" "pr2_calibration_controllers";
  pr2_controllers = pkg "sha256-Aw8qP+xXxJgYjR4BZQrAAIe/0o/k8Vl2MyoYkH2vTiY=" "pr2_controllers";
  pr2_controllers_msgs = pkg "sha256-rGT4z54YXjTcUUgA2PE+kxxlMZHVP67AfFTiz5pDeIw=" "pr2_controllers_msgs";
  pr2_gripper_action = pkg "sha256-Ss20bLptdYLLDU0L8UPwn3RodUz6qgOy3Yp6PWSWw3E=" "pr2_gripper_action";
  pr2_head_action = pkg "sha256-uRWWaP+D7MHcDx6Mk9aCzgJq/fNqticqi2NffP0ij+Q=" "pr2_head_action";
  pr2_mechanism_controllers = pkg "sha256-nhMb7DswHy4pseVz7vSqNTsQKy1rSbrz3gDR096xxGw=" "pr2_mechanism_controllers";
  robot_mechanism_controllers = pkg "sha256-YqjPs505bvA92nxWEzJrlKsv/GRlgLwemFy1OAnmdBI=" "robot_mechanism_controllers";
  single_joint_position_action = pkg "sha256-xc68WcIBVKnNKoSx3fj2xDoHWxYJ0PAU9jLqxqzHp/0=" "single_joint_position_action";
}
