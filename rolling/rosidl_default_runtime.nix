{
  action_msgs,
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_core_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosidl_default_runtime";
  pkgFinal = final.rolling.rosidl_default_runtime;
  src = srcs.rosidl_defaults.rosidl_default_runtime;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    action_msgs
    rosidl_core_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
