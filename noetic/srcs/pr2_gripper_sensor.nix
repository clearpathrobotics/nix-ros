{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PR2";
    repo = "pr2_gripper_sensor";
    rev = "5168a5e831cb7f826db28339ffaab5bb4173f15c";
    hash = "sha256-Ludd3NMU3B7fq4giO/c5fh5SkAjy45LKRhmZ7FUsuAY=";
    name = "PR2-pr2_gripper_sensor-5168a5e831cb7f826db28339ffaab5bb4173f15c";
  });
in
{
  pr2_gripper_sensor = pkg "sha256-18v7kFfXeXjXyznvDN5jyn615dCNnOY89yxdU4/4IWU=" "pr2_gripper_sensor";
  pr2_gripper_sensor_action = pkg "sha256-+Smdt0wYeBugTcJ6zJFzUxIKzcf2fKQX7kAYOpsC1HU=" "pr2_gripper_sensor_action";
  pr2_gripper_sensor_controller = pkg "sha256-dySX5Nl4IcqDTUiI8IzPPhL/GZ8A+kv8fxZ/ROB3zxY=" "pr2_gripper_sensor_controller";
  pr2_gripper_sensor_msgs = pkg "sha256-K5fRkposc5EIoxSZDp/KiqawudxJDm/Hwo3iJuOBPno=" "pr2_gripper_sensor_msgs";
}
