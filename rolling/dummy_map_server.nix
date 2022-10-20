{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  nav_msgs,
  rclcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dummy_map_server";
  pkgFinal = final.rolling.dummy_map_server;
  src = srcs.demos.dummy_map_server;

  colconBuildDepends = [
    ament_cmake
    nav_msgs
    rclcpp
  ];

  colconRunDepends = [
    nav_msgs
    rclcpp
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
