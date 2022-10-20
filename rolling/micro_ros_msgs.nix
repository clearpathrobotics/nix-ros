{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rosidl_default_generators,
  rosidl_default_runtime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "micro_ros_msgs";
  pkgFinal = final.rolling.micro_ros_msgs;
  src = srcs.micro_ros_msgs.micro_ros_msgs;

  colconBuildDepends = [
    ament_cmake
    rosidl_default_generators
  ];

  colconRunDepends = [
    rosidl_default_runtime
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
