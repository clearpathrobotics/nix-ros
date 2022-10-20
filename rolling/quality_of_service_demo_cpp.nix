{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  launch,
  launch_ros,
  launch_testing,
  rclcpp,
  rclcpp_components,
  rcutils,
  rmw,
  rmw_implementation_cmake,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "quality_of_service_demo_cpp";
  pkgFinal = final.rolling.quality_of_service_demo_cpp;
  src = srcs.demos.quality_of_service_demo_cpp;

  colconBuildDepends = [
    ament_cmake
    example_interfaces
    rclcpp
    rclcpp_components
    rcutils
    rmw
    rmw_implementation_cmake
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    example_interfaces
    launch_ros
    rclcpp
    rclcpp_components
    rcutils
    rmw
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    launch
    launch_testing
  ];
}
