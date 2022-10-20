{
  boost,
  catkin,
  controller_interface,
  controller_manager,
  controller_manager_msgs,
  diff_drive_controller,
  geometry_msgs,
  hardware_interface,
  nav_msgs,
  pluginlib,
  realtime_tools,
  roscpp,
  rostest,
  std_msgs,
  std_srvs,
  tf,
  urdfdom,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ackermann_steering_controller";
  pkgFinal = final.noetic.ackermann_steering_controller;
  src = srcs.ros_controllers.ackermann_steering_controller;

  colconBuildDepends = [
    boost
    catkin
    controller_interface
    diff_drive_controller
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    roscpp
    tf
    urdfdom
  ];

  colconRunDepends = [
    boost
    controller_interface
    diff_drive_controller
    hardware_interface
    nav_msgs
    pluginlib
    realtime_tools
    roscpp
    tf
    urdfdom
  ];

  colconTestDepends = [
    controller_manager
    controller_manager_msgs
    geometry_msgs
    rostest
    std_msgs
    std_srvs
    xacro
  ];
}
