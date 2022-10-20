{
  catkin,
  pluginlib,
  pr2_controller_interface,
  pr2_mechanism_controllers,
  pr2_mechanism_model,
  realtime_tools,
  robot_mechanism_controllers,
  roscpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_calibration_controllers";
  pkgFinal = final.noetic.pr2_calibration_controllers;
  src = srcs.pr2_controllers.pr2_calibration_controllers;

  colconBuildDepends = [
    catkin
    pluginlib
    pr2_controller_interface
    pr2_mechanism_controllers
    pr2_mechanism_model
    realtime_tools
    robot_mechanism_controllers
    roscpp
    std_msgs
  ];

  colconRunDepends = [
    pluginlib
    pr2_controller_interface
    pr2_mechanism_controllers
    pr2_mechanism_model
    realtime_tools
    robot_mechanism_controllers
    roscpp
    std_msgs
  ];

  colconTestDepends = [
  ];
}
