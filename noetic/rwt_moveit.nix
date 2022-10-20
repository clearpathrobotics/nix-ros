{
  catkin,
  kdl_parser,
  message_generation,
  message_runtime,
  moveit_msgs,
  robot_state_publisher,
  rosbridge_server,
  rospy,
  roswww,
  rwt_utils_3rdparty,
  sensor_msgs,
  std_msgs,
  tf,
  tf2_web_republisher,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rwt_moveit";
  pkgFinal = final.noetic.rwt_moveit;
  src = srcs.visualization_rwt.rwt_moveit;

  colconBuildDepends = [
    catkin
    kdl_parser
    message_generation
    moveit_msgs
    robot_state_publisher
    rosbridge_server
    rospy
    roswww
    rwt_utils_3rdparty
    sensor_msgs
    std_msgs
    tf
    tf2_web_republisher
    visualization_msgs
  ];

  colconRunDepends = [
    kdl_parser
    message_runtime
    moveit_msgs
    robot_state_publisher
    rosbridge_server
    rospy
    roswww
    rwt_utils_3rdparty
    sensor_msgs
    std_msgs
    tf
    tf2_web_republisher
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
