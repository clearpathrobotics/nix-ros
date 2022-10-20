{
  catkin,
  controller_interface,
  forward_command_controller,
  hardware_interface,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "position_controllers";
  pkgFinal = final.noetic.position_controllers;
  src = srcs.ros_controllers.position_controllers;

  colconBuildDepends = [
    catkin
    forward_command_controller
    hardware_interface
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    controller_interface
    forward_command_controller
    hardware_interface
    roscpp
  ];

  colconTestDepends = [
  ];
}
