{
  boost,
  catkin,
  control_msgs,
  controller_interface,
  controller_manager,
  dynamic_reconfigure,
  geometry_msgs,
  hardware_interface,
  nav_msgs,
  pluginlib,
  realtime_tools,
  rosgraph_msgs,
  rostest,
  rostopic,
  std_srvs,
  tf,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diff_drive_controller";
  pkgFinal = final.noetic.diff_drive_controller;
  src = srcs.ros_controllers.diff_drive_controller;

  colconBuildDepends = [
    boost
    catkin
    control_msgs
    controller_interface
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    tf
    urdf
  ];

  colconRunDepends = [
    boost
    control_msgs
    controller_interface
    dynamic_reconfigure
    geometry_msgs
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    tf
    urdf
  ];

  colconTestDepends = [
    controller_manager
    rosgraph_msgs
    rostest
    rostopic
    std_srvs
    xacro
  ];
}
