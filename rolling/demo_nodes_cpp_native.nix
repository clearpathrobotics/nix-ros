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
  rmw_fastrtps_cpp,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "demo_nodes_cpp_native";
  pkgFinal = final.rolling.demo_nodes_cpp_native;
  src = srcs.demos.demo_nodes_cpp_native;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rclcpp_components
    rmw_fastrtps_cpp
    std_msgs
  ];

  colconRunDepends = [
    rclcpp
    rclcpp_components
    rmw_fastrtps_cpp
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
  ];
}
