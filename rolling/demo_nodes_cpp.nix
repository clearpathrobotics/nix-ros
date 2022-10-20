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
  launch_xml,
  rclcpp,
  rclcpp_components,
  rcutils,
  rmw,
  rmw_implementation_cmake,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "demo_nodes_cpp";
  pkgFinal = final.rolling.demo_nodes_cpp;
  src = srcs.demos.demo_nodes_cpp;

  colconBuildDepends = [
    ament_cmake
    example_interfaces
    rclcpp
    rclcpp_components
    rcutils
    rmw
    rmw_implementation_cmake
    std_msgs
  ];

  colconRunDepends = [
    example_interfaces
    launch_ros
    launch_xml
    rclcpp
    rclcpp_components
    rcutils
    rmw
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
