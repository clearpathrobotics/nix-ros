{
  ament_cmake_gtest,
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  lifecycle_msgs,
  mimick_vendor,
  performance_test_fixture,
  rcl,
  rcl_interfaces,
  rcl_lifecycle,
  rclcpp,
  rcpputils,
  rcutils,
  rmw,
  rosidl_typesupport_cpp,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclcpp_lifecycle";
  pkgFinal = final.rolling.rclcpp_lifecycle;
  src = srcs.rclcpp.rclcpp_lifecycle;

  colconBuildDepends = [
    ament_cmake_ros
    lifecycle_msgs
    rcl
    rcl_interfaces
    rcl_lifecycle
    rclcpp
    rcutils
    rmw
    rosidl_typesupport_cpp
  ];

  colconRunDepends = [
    lifecycle_msgs
    rcl
    rcl_interfaces
    rcl_lifecycle
    rclcpp
    rcutils
    rmw
    rosidl_typesupport_cpp
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    mimick_vendor
    performance_test_fixture
    rcpputils
    test_msgs
  ];
}
