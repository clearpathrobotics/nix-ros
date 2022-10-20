{
  angles,
  camera_info_manager,
  catkin,
  cv_bridge,
  diagnostic_updater,
  dynamic_reconfigure,
  geometry_msgs,
  image_geometry,
  image_transport,
  message_runtime,
  nodelet,
  roscpp,
  roslint,
  rospy,
  rostest,
  sensor_msgs,
  std_msgs,
  tf,
  tf2,
  tf2_geometry_msgs,
  udp_com,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hfl_driver";
  pkgFinal = final.noetic.hfl_driver;
  src = srcs.hfl_driver.hfl_driver;

  colconBuildDepends = [
    angles
    camera_info_manager
    catkin
    cv_bridge
    diagnostic_updater
    dynamic_reconfigure
    image_geometry
    image_transport
    nodelet
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
    tf2
    tf2_geometry_msgs
    udp_com
    visualization_msgs
  ];

  colconRunDepends = [
    angles
    camera_info_manager
    cv_bridge
    diagnostic_updater
    dynamic_reconfigure
    geometry_msgs
    image_geometry
    image_transport
    message_runtime
    nodelet
    roscpp
    rospy
    sensor_msgs
    std_msgs
    tf
    tf2
    tf2_geometry_msgs
    udp_com
    visualization_msgs
  ];

  colconTestDepends = [
    roslint
    rostest
  ];
}
