{
  ament_cmake,
  ament_cmake_gmock,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  pluginlib,
  rcpputils,
  rcutils,
  rosbag2_test_common,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_storage";
  pkgFinal = final.rolling.rosbag2_storage;
  src = srcs.rosbag2.rosbag2_storage;

  colconBuildDepends = [
    ament_cmake
    pluginlib
    rcpputils
    rcutils
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    pluginlib
    rcpputils
    rcutils
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    rosbag2_test_common
  ];
}
