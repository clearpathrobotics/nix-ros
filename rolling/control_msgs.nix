{
  action_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,
  trajectory_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "control_msgs";
  pkgFinal = final.rolling.control_msgs;
  src = srcs.control_msgs.control_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    builtin_interfaces
    geometry_msgs
    rosidl_default_generators
    std_msgs
    trajectory_msgs
  ];

  colconRunDepends = [
    action_msgs
    builtin_interfaces
    geometry_msgs
    rosidl_default_runtime
    std_msgs
    trajectory_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
