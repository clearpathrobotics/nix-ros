{
  ament_cmake,
  ament_cmake_gmock,
  ament_lint_auto,
  ament_lint_common,
  pluginlib,
  rcpputils,
  rcutils,
  rosbag2_storage,
  rosbag2_test_common,
  sqlite3_vendor,
  yaml_cpp_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosbag2_storage_sqlite3";
  pkgFinal = final.rolling.rosbag2_storage_sqlite3;
  src = srcs.rosbag2.rosbag2_storage_sqlite3;

  colconBuildDepends = [
    ament_cmake
    pluginlib
    rcpputils
    rcutils
    rosbag2_storage
    sqlite3_vendor
    yaml_cpp_vendor
  ];

  colconRunDepends = [
    pluginlib
    rcpputils
    rcutils
    rosbag2_storage
    sqlite3_vendor
    yaml_cpp_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ament_lint_auto
    ament_lint_common
    rosbag2_test_common
  ];
}
