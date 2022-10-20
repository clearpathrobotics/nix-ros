{
  catkin,
  control_toolbox,
  ethercat_trigger_controllers,
  joint_trajectory_action,
  pr2_calibration_controllers,
  pr2_controllers_msgs,
  pr2_gripper_action,
  pr2_head_action,
  pr2_mechanism_controllers,
  robot_mechanism_controllers,
  single_joint_position_action,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_controllers";
  pkgFinal = final.noetic.pr2_controllers;
  src = srcs.pr2_controllers.pr2_controllers;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    control_toolbox
    ethercat_trigger_controllers
    joint_trajectory_action
    pr2_calibration_controllers
    pr2_controllers_msgs
    pr2_gripper_action
    pr2_head_action
    pr2_mechanism_controllers
    robot_mechanism_controllers
    single_joint_position_action
  ];

  colconTestDepends = [
  ];
}
