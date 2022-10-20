{
  action_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "smacc2_msgs";
  pkgFinal = final.rolling.smacc2_msgs;
  src = srcs.SMACC2.smacc2_msgs;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    action_msgs
    builtin_interfaces
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
