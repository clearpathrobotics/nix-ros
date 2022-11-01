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
  name = "dynamixel_workbench_msgs";
  pkgFinal = final.rolling.dynamixel_workbench_msgs;
  src = srcs.dynamixel_workbench_msgs.dynamixel_workbench_msgs;

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
