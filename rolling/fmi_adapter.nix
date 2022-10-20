{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  fmilibrary_vendor,
  launch,
  launch_ros,
  launch_testing,
  rcl_interfaces,
  rclcpp,
  rclcpp_components,
  rclcpp_lifecycle,
  rcutils,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fmi_adapter";
  pkgFinal = final.rolling.fmi_adapter;
  src = srcs.fmi_adapter.fmi_adapter;

  colconBuildDepends = [
    ament_cmake
    fmilibrary_vendor
    rcl_interfaces
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    std_msgs
  ];

  colconRunDepends = [
    launch
    launch_ros
    rcl_interfaces
    rclcpp
    rclcpp_components
    rclcpp_lifecycle
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch_testing
    rcutils
  ];
}
