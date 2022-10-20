{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rcpputils,
  rcutils,
  rosbag2_cpp,
  rosbag2_storage,
  rosbag2_test_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_compression";
  pkgFinal = final.rolling.rosbag2_compression;
  src = srcs.rosbag2.rosbag2_compression;

  colconBuildDepends = [
    ament_cmake
    rcpputils
    rcutils
    rosbag2_cpp
    rosbag2_storage
  ];

  colconRunDepends = [
    rcpputils
    rcutils
    rosbag2_cpp
    rosbag2_storage
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rclcpp
    rosbag2_test_common
  ];
}
