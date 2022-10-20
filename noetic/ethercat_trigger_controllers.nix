{
  catkin,
  diagnostic_msgs,
  libtool,
  message_generation,
  message_runtime,
  pluginlib,
  pr2_controller_interface,
  realtime_tools,
  roscpp,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ethercat_trigger_controllers";
  pkgFinal = final.noetic.ethercat_trigger_controllers;
  src = srcs.pr2_controllers.ethercat_trigger_controllers;

  colconBuildDepends = [
    catkin
    diagnostic_msgs
    libtool
    message_generation
    pluginlib
    pr2_controller_interface
    realtime_tools
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    libtool
    message_runtime
    pluginlib
    pr2_controller_interface
    realtime_tools
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
