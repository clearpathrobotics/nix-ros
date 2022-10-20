{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  rclcpp,
  rclcpp_components,
  rcutils,
  rmw_implementation_cmake,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "composition";
  pkgFinal = final.rolling.composition;
  src = srcs.demos.composition;

  colconBuildDepends = [
    ament_cmake
    example_interfaces
    rclcpp
    rclcpp_components
    rcutils
    std_msgs
  ];

  colconRunDepends = [
    example_interfaces
    launch_ros
    rclcpp
    rclcpp_components
    rcutils
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
