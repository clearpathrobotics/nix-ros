{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  micro_ros_diagnostic_msgs,
  micro_ros_diagnostic_updater,
  osrf_testing_tools_cpp,
  rcl,
  rclc,
  rcutils,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "micro_ros_common_diagnostics";
  pkgFinal = final.rolling.micro_ros_common_diagnostics;
  src = srcs.micro_ros_diagnostics.micro_ros_common_diagnostics;

  colconBuildDepends = [
    ament_cmake
    micro_ros_diagnostic_msgs
    micro_ros_diagnostic_updater
    rcl
    rclc
    rcutils
  ];

  colconRunDepends = [
    micro_ros_diagnostic_msgs
    micro_ros_diagnostic_updater
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    osrf_testing_tools_cpp
  ];
}
