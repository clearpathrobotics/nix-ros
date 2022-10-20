{
  ament_cmake,
  ament_cmake_gtest,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  builtin_interfaces,
  geometry_msgs,
  rclcpp,
  rclpy,
  rmw,
  tf2,
  tf2_geometry_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "interactive_markers";
  pkgFinal = final.rolling.interactive_markers;
  src = srcs.interactive_markers.interactive_markers;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    rclcpp
    rmw
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    builtin_interfaces
    rclcpp
    rclpy
    rmw
    tf2
    tf2_geometry_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_gtest
    ament_lint_auto
    ament_lint_common
    geometry_msgs
  ];
}
