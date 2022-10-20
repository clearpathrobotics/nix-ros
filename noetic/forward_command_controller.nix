{
  catkin,
  controller_interface,
  hardware_interface,
  realtime_tools,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "forward_command_controller";
  pkgFinal = final.noetic.forward_command_controller;
  src = srcs.ros_controllers.forward_command_controller;

  colconBuildDepends = [
    catkin
    controller_interface
    hardware_interface
    realtime_tools
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    controller_interface
    hardware_interface
    realtime_tools
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
