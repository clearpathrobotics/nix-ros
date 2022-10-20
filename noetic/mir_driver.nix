{
  actionlib_msgs,
  catkin,
  diagnostic_msgs,
  dynamic_reconfigure,
  geometry_msgs,
  mir_actions,
  mir_description,
  mir_msgs,
  move_base_msgs,
  nav_msgs,
  python3Packages,
  robot_state_publisher,
  rosgraph_msgs,
  roslaunch,
  rospy,
  rospy_message_converter,
  sensor_msgs,
  std_msgs,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_driver";
  pkgFinal = final.noetic.mir_driver;
  src = srcs.mir_robot.mir_driver;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    diagnostic_msgs
    dynamic_reconfigure
    geometry_msgs
    mir_actions
    mir_msgs
    move_base_msgs
    nav_msgs
    python3Packages.websocket-client
    rosgraph_msgs
    roslaunch
    rospy
    rospy_message_converter
    sensor_msgs
    std_msgs
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    diagnostic_msgs
    dynamic_reconfigure
    geometry_msgs
    mir_actions
    mir_description
    mir_msgs
    move_base_msgs
    nav_msgs
    python3Packages.websocket-client
    robot_state_publisher
    rosgraph_msgs
    rospy
    rospy_message_converter
    sensor_msgs
    std_msgs
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
