{
  ament_cmake_auto,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "autoware_auto_debug_msgs";
  pkgFinal = final.rolling.autoware_auto_debug_msgs;
  src = srcs.autoware_auto_msgs.autoware_auto_debug_msgs;

  colconBuildDepends = [
    ament_cmake_auto
    builtin_interfaces
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
