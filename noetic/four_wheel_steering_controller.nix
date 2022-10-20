{
  boost,
  catkin,
  controller_interface,
  controller_manager,
  four_wheel_steering_msgs,
  geometry_msgs,
  hardware_interface,
  nav_msgs,
  pluginlib,
  realtime_tools,
  roscpp,
  rosgraph_msgs,
  rostest,
  std_msgs,
  std_srvs,
  tf,
  urdf_geometry_parser,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "four_wheel_steering_controller";
  pkgFinal = final.noetic.four_wheel_steering_controller;
  src = srcs.ros_controllers.four_wheel_steering_controller;

  colconBuildDepends = [
    boost
    catkin
    controller_interface
    four_wheel_steering_msgs
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    roscpp
    tf
    urdf_geometry_parser
  ];

  colconRunDepends = [
    boost
    controller_interface
    four_wheel_steering_msgs
    hardware_interface
    nav_msgs
    realtime_tools
    roscpp
    tf
  ];

  colconTestDepends = [
    controller_manager
    geometry_msgs
    rosgraph_msgs
    rostest
    std_msgs
    std_srvs
    xacro
  ];
}
