{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_auto_geometry_msgs";
  pkgFinal = final.rolling.autoware_auto_geometry_msgs;
  src = srcs.autoware_auto_msgs.autoware_auto_geometry_msgs;

  colconBuildDepends = [
    ament_cmake_auto
    geometry_msgs
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
