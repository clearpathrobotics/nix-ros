{
  angles,
  boost,
  catkin,
  cob_base_controller_utils,
  controller_interface,
  geometry_msgs,
  hardware_interface,
  nav_msgs,
  pluginlib,
  realtime_tools,
  roscpp,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_tricycle_controller";
  pkgFinal = final.noetic.cob_tricycle_controller;
  src = srcs.cob_control.cob_tricycle_controller;

  colconBuildDepends = [
    angles
    boost
    catkin
    cob_base_controller_utils
    controller_interface
    geometry_msgs
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    roscpp
    std_srvs
    tf
  ];

  colconRunDepends = [
    angles
    boost
    cob_base_controller_utils
    controller_interface
    geometry_msgs
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    roscpp
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
