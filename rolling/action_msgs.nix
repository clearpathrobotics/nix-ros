{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  rosidl_core_generators,
  rosidl_core_runtime,
  unique_identifier_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "action_msgs";
  pkgFinal = final.rolling.action_msgs;
  src = srcs.rcl_interfaces.action_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_core_generators
    unique_identifier_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_core_runtime
    unique_identifier_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
