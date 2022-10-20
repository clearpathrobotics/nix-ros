{
  boost,
  catkin,
  curl,
  cv_bridge,
  dynamic_reconfigure,
  message_generation,
  message_runtime,
  nodelet,
  roscpp,
  sensor_msgs,
  std_msgs,
  stereo_msgs,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nerian_stereo";
  pkgFinal = final.noetic.nerian_stereo;
  src = srcs.nerian_stereo.nerian_stereo;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    dynamic_reconfigure
    message_generation
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    boost
    curl
    cv_bridge
    dynamic_reconfigure
    message_runtime
    nodelet
    roscpp
    sensor_msgs
    std_msgs
    stereo_msgs
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
