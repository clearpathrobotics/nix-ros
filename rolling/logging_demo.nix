{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  rclcpp,
  rclcpp_components,
  rcutils,
  rmw_implementation_cmake,
  rosidl_default_generators,
  rosidl_default_runtime,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "logging_demo";
  pkgFinal = final.rolling.logging_demo;
  src = srcs.demos.logging_demo;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_components
    rcutils
    rosidl_default_generators
    std_msgs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    rcutils
    rosidl_default_runtime
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    rmw_implementation_cmake
  ];
}
