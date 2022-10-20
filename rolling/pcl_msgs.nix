{
  ament_cmake,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pcl_msgs";
  pkgFinal = final.rolling.pcl_msgs;
  src = srcs.pcl_msgs.pcl_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    rosidl_default_runtime
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
