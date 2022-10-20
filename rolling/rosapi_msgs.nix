{
  ament_cmake_ros,
  builtin_interfaces,
  rcl_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosapi_msgs";
  pkgFinal = final.rolling.rosapi_msgs;
  src = srcs.rosbridge_suite.rosapi_msgs;

  colconBuildDepends = [
    ament_cmake_ros
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rcl_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
  ];
}
