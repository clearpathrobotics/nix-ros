{
  catkin,
  hardware_interface,
  pluginlib,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "combined_robot_hw";
  pkgFinal = final.noetic.combined_robot_hw;
  src = srcs.ros_control.combined_robot_hw;

  colconBuildDepends = [
    catkin
    hardware_interface
    pluginlib
    roscpp
  ];

  colconRunDepends = [
    hardware_interface
    pluginlib
    roscpp
  ];

  colconTestDepends = [
  ];
}
