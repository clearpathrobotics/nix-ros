{
  actionlib,
  angles,
  catkin,
  control_msgs,
  control_toolbox,
  diagnostic_msgs,
  eigen_conversions,
  filters,
  geometry_msgs,
  kdl_parser,
  libtool,
  message_filters,
  message_generation,
  message_runtime,
  pluginlib,
  pr2_controller_interface,
  pr2_controller_manager,
  pr2_controllers_msgs,
  pr2_mechanism_model,
  realtime_tools,
  roscpp,
  rospy,
  std_msgs,
  tf,
  tf_conversions,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_mechanism_controllers";
  pkgFinal = final.noetic.robot_mechanism_controllers;
  src = srcs.pr2_controllers.robot_mechanism_controllers;

  colconBuildDepends = [
    actionlib
    angles
    catkin
    control_msgs
    control_toolbox
    diagnostic_msgs
    eigen_conversions
    filters
    geometry_msgs
    kdl_parser
    libtool
    message_filters
    message_generation
    pluginlib
    pr2_controller_interface
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_mechanism_model
    realtime_tools
    roscpp
    std_msgs
    tf
    tf_conversions
    trajectory_msgs
  ];

  colconRunDepends = [
    actionlib
    angles
    control_msgs
    control_toolbox
    diagnostic_msgs
    eigen_conversions
    filters
    geometry_msgs
    kdl_parser
    libtool
    message_filters
    message_runtime
    pluginlib
    pr2_controller_interface
    pr2_controller_manager
    pr2_controllers_msgs
    pr2_mechanism_model
    realtime_tools
    roscpp
    rospy
    std_msgs
    tf
    tf_conversions
    trajectory_msgs
  ];

  colconTestDepends = [
  ];
}
