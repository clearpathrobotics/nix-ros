{
  catkin,
  controller_interface,
  hardware_interface,
  joint_trajectory_controller,
  pluginlib,
  realtime_tools,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "scaled_joint_trajectory_controller";
  pkgFinal = final.noetic.scaled_joint_trajectory_controller;
  src = srcs.scaled_controllers.scaled_joint_trajectory_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    hardware_interface
    joint_trajectory_controller
    pluginlib
    realtime_tools
    std_msgs
  ];

  colconRunDepends = [
    controller_interface
    hardware_interface
    joint_trajectory_controller
    pluginlib
    realtime_tools
    std_msgs
  ];

  colconTestDepends = [
  ];
}
