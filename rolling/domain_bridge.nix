{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  example_interfaces,
  launch,
  launch_testing,
  launch_testing_ament_cmake,
  libyamlcpp,
  rclcpp,
  rclcpp_components,
  rcutils,
  rmw_connextdds,
  rmw_cyclonedds_cpp,
  rmw_fastrtps_cpp,
  rmw_implementation_cmake,
  rosbag2_cpp,
  rosgraph_msgs,
  rosidl_default_generators,
  rosidl_default_runtime,
  rosidl_typesupport_cpp,
  test_msgs,
  zstd_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "domain_bridge";
  pkgFinal = final.rolling.domain_bridge;
  src = srcs.domain_bridge.domain_bridge;

  colconBuildDepends = [
    ament_cmake
    libyamlcpp
    rclcpp
    rclcpp_components
    rcutils
    rosbag2_cpp
    rosidl_default_generators
    rosidl_typesupport_cpp
    zstd_vendor
  ];

  colconRunDepends = [
    libyamlcpp
    rclcpp
    rclcpp_components
    rcutils
    rosbag2_cpp
    rosidl_default_runtime
    rosidl_typesupport_cpp
    zstd_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    example_interfaces
    launch
    launch_testing
    launch_testing_ament_cmake
    rmw_connextdds
    rmw_cyclonedds_cpp
    rmw_fastrtps_cpp
    rmw_implementation_cmake
    rosgraph_msgs
    test_msgs
  ];
}
