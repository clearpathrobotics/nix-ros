{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  vision_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "webots_ros2_msgs";
  pkgFinal = final.rolling.webots_ros2_msgs;
  src = srcs.webots_ros2.webots_ros2_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
    std_msgs
    vision_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
    std_msgs
    vision_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
