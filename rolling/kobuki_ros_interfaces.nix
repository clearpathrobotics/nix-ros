{
  action_msgs,
  ament_cmake,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "kobuki_ros_interfaces";
  pkgFinal = final.rolling.kobuki_ros_interfaces;
  src = srcs.kobuki_ros_interfaces.kobuki_ros_interfaces;

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
    ament_lint_common
  ];
}
