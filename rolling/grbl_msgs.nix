{
  action_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "grbl_msgs";
  pkgFinal = final.rolling.grbl_msgs;
  src = srcs.grbl_msgs.grbl_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    action_msgs
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
