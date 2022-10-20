{
  ament_cmake_gmock,
  ament_cmake_ros,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  keyboard_handler,
  rclcpp,
  rmw,
  rmw_implementation_cmake,
  rosbag2_compression,
  rosbag2_compression_zstd,
  rosbag2_cpp,
  rosbag2_interfaces,
  rosbag2_storage,
  rosbag2_test_common,
  shared_queues_vendor,
  test_msgs,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_transport";
  pkgFinal = final.rolling.rosbag2_transport;
  src = srcs.rosbag2.rosbag2_transport;

  colconBuildDepends = [
    ament_cmake_ros
    keyboard_handler
    rclcpp
    rmw
    rosbag2_compression
    rosbag2_cpp
    rosbag2_interfaces
    rosbag2_storage
    shared_queues_vendor
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    keyboard_handler
    rclcpp
    rmw
    rosbag2_compression
    rosbag2_cpp
    rosbag2_interfaces
    rosbag2_storage
    shared_queues_vendor
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_index_cpp
    ament_lint_auto
    ament_lint_common
    rmw_implementation_cmake
    rosbag2_compression_zstd
    rosbag2_test_common
    test_msgs
  ];
}
