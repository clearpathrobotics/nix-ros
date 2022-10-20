{
  catkin,
  pr2_controller_manager,
  pr2_gripper_action,
  pr2_head_action,
  pr2_machine,
  robot_mechanism_controllers,
  roslaunch,
  single_joint_position_action,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_controller_configuration";
  pkgFinal = final.noetic.pr2_controller_configuration;
  src = srcs.pr2_robot.pr2_controller_configuration;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    pr2_controller_manager
    pr2_gripper_action
    pr2_head_action
    pr2_machine
    robot_mechanism_controllers
    single_joint_position_action
  ];

  colconTestDepends = [
  ];
}
