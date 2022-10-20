{
  ament_cmake,
  ament_cmake_clang_format,
  ament_cmake_gmock,
  ament_index_cpp,
  ament_lint_auto,
  ament_lint_common,
  mcap_vendor,
  pluginlib,
  rcpputils,
  rcutils,
  rosbag2_cpp,
  rosbag2_storage,
  rosbag2_storage_mcap_test_fixture_interfaces,
  rosbag2_test_common,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_storage_mcap";
  pkgFinal = final.rolling.rosbag2_storage_mcap;
  src = srcs.rosbag2_storage_mcap.rosbag2_storage_mcap;

  colconBuildDepends = [
    ament_cmake
    ament_index_cpp
    mcap_vendor
    pluginlib
    rcutils
    rosbag2_storage
  ];

  colconRunDepends = [
    ament_index_cpp
    mcap_vendor
    pluginlib
    rcutils
    rosbag2_storage
  ];

  colconTestDepends = [
    ament_cmake_clang_format
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rcpputils
    rosbag2_cpp
    rosbag2_storage_mcap_test_fixture_interfaces
    rosbag2_test_common
    std_msgs
  ];
}
