{
  ament_cmake,
  ament_cmake_copyright,
  ament_lint_auto,
  boost,
  geometry_msgs,
  openssl,
  pluginlib,
  rclcpp,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "warehouse_ros";
  pkgFinal = final.rolling.warehouse_ros;
  src = srcs.warehouse_ros.warehouse_ros;

  colconBuildDepends = [
    ament_cmake
    boost
    geometry_msgs
    openssl
    pluginlib
    rclcpp
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    boost
    geometry_msgs
    openssl
    pluginlib
    rclcpp
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconTestDepends = [
    ament_cmake_copyright
    ament_lint_auto
  ];
}
