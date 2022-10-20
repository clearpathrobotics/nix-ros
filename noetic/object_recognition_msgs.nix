{
  actionlib_msgs,
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  sensor_msgs,
  shape_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "object_recognition_msgs";
  pkgFinal = final.noetic.object_recognition_msgs;
  src = srcs.object_recognition_msgs.object_recognition_msgs;

  colconBuildDepends = [
    actionlib_msgs
    catkin
    geometry_msgs
    message_generation
    sensor_msgs
    shape_msgs
    std_msgs
  ];

  colconRunDepends = [
    actionlib_msgs
    geometry_msgs
    message_runtime
    sensor_msgs
    shape_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
