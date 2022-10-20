{
  actionlib,
  actionlib_msgs,
  catkin,
  cob_object_detection_msgs,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_3d_mapping_msgs";
  pkgFinal = final.noetic.cob_3d_mapping_msgs;
  src = srcs.cob_perception_common.cob_3d_mapping_msgs;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    cob_object_detection_msgs
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    cob_object_detection_msgs
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
