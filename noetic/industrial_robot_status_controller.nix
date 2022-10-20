{
  catkin,
  controller_interface,
  hardware_interface,
  industrial_msgs,
  industrial_robot_status_interface,
  pluginlib,
  realtime_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "industrial_robot_status_controller";
  pkgFinal = final.noetic.industrial_robot_status_controller;
  src = srcs.industrial_robot_status_controller.industrial_robot_status_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    hardware_interface
    industrial_msgs
    industrial_robot_status_interface
    pluginlib
    realtime_tools
  ];

  colconRunDepends = [
    controller_interface
    hardware_interface
    industrial_msgs
    pluginlib
    realtime_tools
  ];

  colconTestDepends = [
  ];
}
