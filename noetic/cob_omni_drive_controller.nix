{
  angles,
  boost,
  catkin,
  cob_base_controller_utils,
  controller_interface,
  dynamic_reconfigure,
  geometry_msgs,
  hardware_interface,
  nav_msgs,
  pluginlib,
  realtime_tools,
  roscpp,
  sensor_msgs,
  std_msgs,
  std_srvs,
  tf,
  tf2,
  urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_omni_drive_controller";
  pkgFinal = final.noetic.cob_omni_drive_controller;
  src = srcs.cob_control.cob_omni_drive_controller;

  colconBuildDepends = [
    angles
    boost
    catkin
    cob_base_controller_utils
    controller_interface
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
    tf2
    urdf
  ];

  colconRunDepends = [
    angles
    boost
    cob_base_controller_utils
    controller_interface
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    roscpp
    sensor_msgs
    std_msgs
    std_srvs
    tf
    tf2
    urdf
  ];

  colconTestDepends = [
  ];
}
