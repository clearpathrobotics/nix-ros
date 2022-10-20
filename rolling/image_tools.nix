{
  ament_cmake,
  ament_cmake_pytest,
  ament_lint_auto,
  ament_lint_common,
  launch,
  launch_ros,
  launch_testing,
  launch_testing_ament_cmake,
  launch_testing_ros,
  opencv,
  rclcpp,
  rclcpp_components,
  rmw_implementation_cmake,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_tools";
  pkgFinal = final.rolling.image_tools;
  src = srcs.demos.image_tools;

  colconBuildDepends = [
    ament_cmake
    opencv
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    opencv
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_pytest
    ament_lint_auto
    ament_lint_common
    launch
    launch_ros
    launch_testing
    launch_testing_ament_cmake
    launch_testing_ros
    rmw_implementation_cmake
  ];
}
