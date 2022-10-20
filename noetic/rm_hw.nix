{
  catkin,
  controller_interface,
  controller_manager,
  hardware_interface,
  joint_limits_interface,
  realtime_tools,
  rm_common,
  rm_msgs,
  roscpp,
  roslint,
  transmission_interface,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rm_hw";
  pkgFinal = final.noetic.rm_hw;
  src = srcs.rm_control.rm_hw;

  colconBuildDepends = [
    catkin
    controller_interface
    controller_manager
    hardware_interface
    joint_limits_interface
    realtime_tools
    rm_common
    rm_msgs
    roscpp
    roslint
    transmission_interface
    urdf
  ];

  colconRunDepends = [
    controller_interface
    controller_manager
    hardware_interface
    joint_limits_interface
    realtime_tools
    rm_common
    rm_msgs
    roscpp
    roslint
    transmission_interface
    urdf
  ];

  colconTestDepends = [
  ];
}
