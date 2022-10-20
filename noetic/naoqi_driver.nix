{
  boost,
  catkin,
  cv_bridge,
  diagnostic_msgs,
  diagnostic_updater,
  geometry_msgs,
  image_transport,
  kdl_parser,
  naoqi_bridge_msgs,
  naoqi_libqicore,
  robot_state_publisher,
  rosbag_storage,
  rosconsole,
  rosgraph_msgs,
  sensor_msgs,
  tf2_geometry_msgs,
  tf2_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "naoqi_driver";
  pkgFinal = final.noetic.naoqi_driver;
  src = srcs.naoqi_driver.naoqi_driver;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    diagnostic_msgs
    diagnostic_updater
    geometry_msgs
    image_transport
    kdl_parser
    naoqi_bridge_msgs
    naoqi_libqicore
    robot_state_publisher
    rosbag_storage
    rosconsole
    rosgraph_msgs
    sensor_msgs
    tf2_geometry_msgs
    tf2_msgs
    tf2_ros
  ];

  colconRunDepends = [
    boost
    cv_bridge
    image_transport
    kdl_parser
    naoqi_bridge_msgs
    naoqi_libqicore
    robot_state_publisher
    rosbag_storage
    rosconsole
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
