{
  ament_cmake,
  ament_cmake_gtest,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  soccer_object_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "soccer_marker_generation";
  pkgFinal = final.rolling.soccer_marker_generation;
  src = srcs.soccer_visualization.soccer_marker_generation;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    soccer_object_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    rclcpp
    soccer_object_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
  ];
}
