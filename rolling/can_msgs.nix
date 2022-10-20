{
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
  name = "can_msgs";
  pkgFinal = final.rolling.can_msgs;
  src = srcs.ros_canopen.can_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
