{
  ament_cmake_auto,
  ament_lint_auto,
  geometry_msgs,
  ouxt_lint_common,
  rclcpp,
  std_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "fluent_rviz";
  pkgFinal = final.rolling.fluent_rviz;
  src = srcs.fluent_rviz.fluent_rviz;

  colconBuildDepends = [
    ament_cmake_auto
    geometry_msgs
    rclcpp
    std_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rclcpp
    std_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ouxt_lint_common
  ];
}
