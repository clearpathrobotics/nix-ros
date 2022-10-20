{
  catkin,
  controller_interface,
  pluginlib,
  realtime_tools,
  speed_scaling_interface,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "speed_scaling_state_controller";
  pkgFinal = final.noetic.speed_scaling_state_controller;
  src = srcs.scaled_controllers.speed_scaling_state_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    pluginlib
    realtime_tools
    speed_scaling_interface
    std_msgs
  ];

  colconRunDepends = [
    controller_interface
    pluginlib
    realtime_tools
    speed_scaling_interface
    std_msgs
  ];

  colconTestDepends = [
  ];
}
