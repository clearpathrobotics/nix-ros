{
  ament_cmake,
  ament_cmake_xmllint,
  ament_lint_auto,
  ament_lint_common,
  diagnostic_updater,
  geometry_msgs,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  rclcpp,
  std_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "twist_mux";
  pkgFinal = final.rolling.twist_mux;
  src = srcs.twist_mux.twist_mux;

  colconBuildDepends = [
    ament_cmake
    diagnostic_updater
    geometry_msgs
    rclcpp
    std_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    diagnostic_updater
    geometry_msgs
    rclcpp
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_xmllint
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
  ];
}
