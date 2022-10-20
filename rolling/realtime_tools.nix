{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rclcpp_action,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "realtime_tools";
  pkgFinal = final.rolling.realtime_tools;
  src = srcs.realtime_tools.realtime_tools;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_action
  ];

  colconRunDepends = [
    ament_cmake
    rclcpp
    rclcpp_action
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rclcpp_action
    test_msgs
  ];
}
