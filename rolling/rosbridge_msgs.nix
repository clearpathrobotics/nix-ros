{
  ament_cmake_ros,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbridge_msgs";
  pkgFinal = final.rolling.rosbridge_msgs;
  src = srcs.rosbridge_suite.rosbridge_msgs;

  colconBuildDepends = [
    ament_cmake_ros
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
  ];
}
