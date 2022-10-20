{
  catkin,
  cmake_modules,
  diagnostic_msgs,
  pluginlib,
  pr2_controller_interface,
  pr2_description,
  pr2_hardware_interface,
  pr2_mechanism_diagnostics,
  pr2_mechanism_model,
  pr2_mechanism_msgs,
  realtime_tools,
  roscpp,
  rosparam,
  rospy,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_controller_manager";
  pkgFinal = final.noetic.pr2_controller_manager;
  src = srcs.pr2_mechanism.pr2_controller_manager;

  colconBuildDepends = [
    catkin
    cmake_modules
    diagnostic_msgs
    pluginlib
    pr2_controller_interface
    pr2_description
    pr2_hardware_interface
    pr2_mechanism_diagnostics
    pr2_mechanism_model
    pr2_mechanism_msgs
    realtime_tools
    roscpp
    rostest
    sensor_msgs
  ];

  colconRunDepends = [
    diagnostic_msgs
    pluginlib
    pr2_controller_interface
    pr2_description
    pr2_hardware_interface
    pr2_mechanism_diagnostics
    pr2_mechanism_model
    pr2_mechanism_msgs
    realtime_tools
    roscpp
    rosparam
    rospy
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
