{
  ament_cmake,
  ament_lint_common,
  builtin_interfaces,
  rmf_dispenser_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_task_msgs";
  pkgFinal = final.rolling.rmf_task_msgs;
  src = srcs.rmf_internal_msgs.rmf_task_msgs;

  colconBuildDepends = [
    ament_cmake
    builtin_interfaces
    rmf_dispenser_msgs
    rosidl_default_generators
  ];

  colconRunDepends = [
    builtin_interfaces
    rmf_dispenser_msgs
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_common
  ];
}
