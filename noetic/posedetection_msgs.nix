{
  catkin,
  cv_bridge,
  geometry_msgs,
  message_filters,
  message_generation,
  message_runtime,
  roscpp,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "posedetection_msgs";
  pkgFinal = final.noetic.posedetection_msgs;
  src = srcs.jsk_common_msgs.posedetection_msgs;

  colconBuildDepends = [
    catkin
    cv_bridge
    geometry_msgs
    message_filters
    message_generation
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    cv_bridge
    geometry_msgs
    message_filters
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
