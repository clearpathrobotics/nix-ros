{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dolly_follow";
  pkgFinal = final.rolling.dolly_follow;
  src = srcs.dolly.dolly_follow;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
