{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rcl_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_gz_interfaces";
  pkgFinal = final.rolling.ros_gz_interfaces;
  src = srcs.ros_ign.ros_gz_interfaces;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rcl_interfaces
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
