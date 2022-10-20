{
  ament_cmake,
  ament_cmake_gmock,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rcpputils,
  ros2bag,
  rosbag2_compression,
  rosbag2_compression_zstd,
  rosbag2_cpp,
  rosbag2_storage,
  rosbag2_storage_default_plugins,
  rosbag2_test_common,
  std_msgs,
  test_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_tests";
  pkgFinal = final.rolling.rosbag2_tests;
  src = srcs.rosbag2.rosbag2_tests;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
  ];

  colconRunDepends = [
    ament_index_cpp
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rclcpp
    rcpputils
    ros2bag
    rosbag2_compression
    rosbag2_compression_zstd
    rosbag2_cpp
    rosbag2_storage
    rosbag2_storage_default_plugins
    rosbag2_test_common
    std_msgs
    test_msgs
  ];
}
