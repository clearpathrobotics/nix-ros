{
  catkin,
  dynamic_reconfigure,
  kdl_parser,
  robot_state_publisher,
  roscpp,
  rostest,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dynamic_robot_state_publisher";
  pkgFinal = final.noetic.dynamic_robot_state_publisher;
  src = srcs.dynamic_robot_state_publisher.dynamic_robot_state_publisher;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    kdl_parser
    robot_state_publisher
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    dynamic_reconfigure
    kdl_parser
    robot_state_publisher
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
    rostest
  ];
}
