{
  catkin,
  combined_robot_hw,
  controller_interface,
  controller_manager,
  controller_manager_msgs,
  hardware_interface,
  joint_limits_interface,
  realtime_tools,
  transmission_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_control";
  pkgFinal = final.noetic.ros_control;
  src = srcs.ros_control.ros_control;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    combined_robot_hw
    controller_interface
    controller_manager
    controller_manager_msgs
    hardware_interface
    joint_limits_interface
    realtime_tools
    transmission_interface
  ];

  colconTestDepends = [
  ];
}
