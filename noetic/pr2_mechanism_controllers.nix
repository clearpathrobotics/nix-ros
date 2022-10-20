{
  angles,
  catkin,
  control_toolbox,
  diagnostic_msgs,
  diagnostic_updater,
  filters,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  pluginlib,
  pr2_controller_interface,
  pr2_controllers_msgs,
  pr2_mechanism_model,
  pr2_mechanism_msgs,
  pr2_msgs,
  realtime_tools,
  robot_mechanism_controllers,
  rosconsole,
  roscpp,
  rospy,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_mechanism_controllers";
  pkgFinal = final.noetic.pr2_mechanism_controllers;
  src = srcs.pr2_controllers.pr2_mechanism_controllers;

  colconBuildDepends = [
    angles
    catkin
    control_toolbox
    diagnostic_msgs
    diagnostic_updater
    filters
    geometry_msgs
    message_generation
    nav_msgs
    pluginlib
    pr2_controller_interface
    pr2_controllers_msgs
    pr2_mechanism_model
    pr2_mechanism_msgs
    pr2_msgs
    realtime_tools
    robot_mechanism_controllers
    rosconsole
    roscpp
    rospy
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    angles
    control_toolbox
    diagnostic_msgs
    diagnostic_updater
    filters
    geometry_msgs
    message_runtime
    nav_msgs
    pluginlib
    pr2_controller_interface
    pr2_controllers_msgs
    pr2_mechanism_model
    pr2_mechanism_msgs
    pr2_msgs
    realtime_tools
    robot_mechanism_controllers
    rosconsole
    roscpp
    rospy
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
