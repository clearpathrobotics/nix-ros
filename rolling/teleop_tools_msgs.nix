{
  action_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_tools_msgs";
  pkgFinal = final.rolling.teleop_tools_msgs;
  src = srcs.teleop_tools.teleop_tools_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    action_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
