{
  catkin,
  gazebo,
  pr2_controller_manager,
  pr2_gripper_action,
  pr2_head_action,
  single_joint_position_action,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_controller_configuration_gazebo";
  pkgFinal = final.noetic.pr2_controller_configuration_gazebo;
  src = srcs.pr2_simulator.pr2_controller_configuration_gazebo;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    gazebo
    pr2_controller_manager
    pr2_gripper_action
    pr2_head_action
    single_joint_position_action
  ];

  colconTestDepends = [
  ];
}
