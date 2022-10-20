{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  autoware_auto_geometry_msgs,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  unique_identifier_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_auto_perception_msgs";
  pkgFinal = final.rolling.autoware_auto_perception_msgs;
  src = srcs.autoware_auto_msgs.autoware_auto_perception_msgs;

  colconBuildDepends = [
    ament_cmake_auto
    autoware_auto_geometry_msgs
    geometry_msgs
    rosidl_default_generators
    std_msgs
    unique_identifier_msgs
  ];

  colconRunDepends = [
    autoware_auto_geometry_msgs
    geometry_msgs
    rosidl_default_runtime
    std_msgs
    unique_identifier_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
