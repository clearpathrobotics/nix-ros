{
  action_msgs,
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  mimick_vendor,
  performance_test_fixture,
  rcl_action,
  rclcpp,
  rcpputils,
  rosidl_runtime_c,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclcpp_action";
  pkgFinal = final.rolling.rclcpp_action;
  src = srcs.rclcpp.rclcpp_action;

  colconBuildDepends = [
    action_msgs
    ament_cmake
    ament_cmake_ros
    rcl_action
    rclcpp
    rcpputils
    rosidl_runtime_c
  ];

  colconRunDepends = [
    action_msgs
    ament_cmake
    rcl_action
    rclcpp
    rcpputils
    rosidl_runtime_c
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    mimick_vendor
    performance_test_fixture
    test_msgs
  ];
}
