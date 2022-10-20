{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_object_detection_msgs";
  pkgFinal = final.noetic.cob_object_detection_msgs;
  src = srcs.cob_perception_common.cob_object_detection_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
