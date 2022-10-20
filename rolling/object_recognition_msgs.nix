{
  action_msgs,
  ament_cmake,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  shape_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "object_recognition_msgs";
  pkgFinal = final.rolling.object_recognition_msgs;
  src = srcs.object_recognition_msgs.object_recognition_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    geometry_msgs
    rosidl_default_generators
    sensor_msgs
    shape_msgs
    std_msgs
  ];

  colconRunDepends = [
    action_msgs
    geometry_msgs
    rosidl_default_runtime
    sensor_msgs
    shape_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
