{
  angles,
  catkin,
  control_msgs,
  control_toolbox,
  controller_interface,
  forward_command_controller,
  hardware_interface,
  pluginlib,
  realtime_tools,
  roscpp,
  std_msgs,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "velocity_controllers";
  pkgFinal = final.noetic.velocity_controllers;
  src = srcs.ros_controllers.velocity_controllers;

  colconBuildDepends = [
    angles
    catkin
    control_msgs
    control_toolbox
    controller_interface
    forward_command_controller
    hardware_interface
    pluginlib
    realtime_tools
    roscpp
    std_msgs
    urdf
  ];

  colconRunDepends = [
    control_msgs
    control_toolbox
    controller_interface
    forward_command_controller
    hardware_interface
    realtime_tools
    roscpp
    std_msgs
    urdf
  ];

  colconTestDepends = [
  ];
}
