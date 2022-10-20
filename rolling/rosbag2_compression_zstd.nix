{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  pluginlib,
  rclcpp,
  rcpputils,
  rcutils,
  rosbag2_compression,
  rosbag2_test_common,
  zstd_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_compression_zstd";
  pkgFinal = final.rolling.rosbag2_compression_zstd;
  src = srcs.rosbag2.rosbag2_compression_zstd;

  colconBuildDepends = [
    ament_cmake
    pluginlib
    rcpputils
    rcutils
    rosbag2_compression
    zstd_vendor
  ];

  colconRunDepends = [
    pluginlib
    rcpputils
    rcutils
    rosbag2_compression
    zstd_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rclcpp
    rosbag2_test_common
  ];
}
