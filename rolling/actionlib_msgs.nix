{
  ament_cmake,
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
  name = "actionlib_msgs";
  pkgFinal = final.rolling.actionlib_msgs;
  src = srcs.common_interfaces.actionlib_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
