{
  catkin,
  eigen,
  kdl_parser,
  orocos-kdl,
  rosbag,
  rosconsole,
  roscpp,
  rostest,
  rostime,
  sensor_msgs,
  tf,
  tf2_kdl,
  tf2_ros,
  urdfdom-headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robot_state_publisher";
  pkgFinal = final.noetic.robot_state_publisher;
  src = srcs.robot_state_publisher.robot_state_publisher;

  colconBuildDepends = [
    catkin
    eigen
    kdl_parser
    orocos-kdl
    rosconsole
    roscpp
    rostime
    sensor_msgs
    tf
    tf2_kdl
    tf2_ros
    urdfdom-headers
  ];

  colconRunDepends = [
    kdl_parser
    orocos-kdl
    rosconsole
    roscpp
    rostime
    sensor_msgs
    tf
    tf2_kdl
    tf2_ros
  ];

  colconTestDepends = [
    rosbag
    rostest
  ];
}
