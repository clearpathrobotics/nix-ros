{
  camera_info_manager,
  catkin,
  cv_bridge,
  geometry_msgs,
  image_transport,
  message_generation,
  message_runtime,
  nodelet,
  roscpp,
  sensor_msgs,
  std_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "stag_ros";
  pkgFinal = final.noetic.stag_ros;
  src = srcs.stag_ros.stag_ros;

  colconBuildDepends = [
    camera_info_manager
    catkin
    cv_bridge
    geometry_msgs
    image_transport
    message_generation
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconRunDepends = [
    camera_info_manager
    cv_bridge
    geometry_msgs
    image_transport
    message_generation
    message_runtime
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
