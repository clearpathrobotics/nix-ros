{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  lifecycle_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "controller_manager_msgs";
  pkgFinal = final.rolling.controller_manager_msgs;
  src = srcs.ros2_control.controller_manager_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    lifecycle_msgs
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    lifecycle_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
