{
  ament_cmake,
  ament_cmake_copyright,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  boost,
  class_loader,
  geometry_msgs,
  rclcpp,
  sqlite,
  sqlite3_vendor,
  warehouse_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warehouse_ros_sqlite";
  pkgFinal = final.rolling.warehouse_ros_sqlite;
  src = srcs.warehouse_ros_sqlite.warehouse_ros_sqlite;

  colconBuildDepends = [
    ament_cmake
    boost
    class_loader
    rclcpp
    sqlite
    sqlite3_vendor
    warehouse_ros
  ];

  colconRunDepends = [
    class_loader
    rclcpp
    sqlite
    warehouse_ros
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    geometry_msgs
  ];
}
