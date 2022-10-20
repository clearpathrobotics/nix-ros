{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  cv_bridge,
  rclcpp,
  sensor_msgs,
  std_msgs,
  zbar,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "zbar_ros";
  pkgFinal = final.rolling.zbar_ros;
  src = srcs.zbar_ros.zbar_ros;

  colconBuildDepends = [
    ament_cmake
    cv_bridge
    rclcpp
    sensor_msgs
    std_msgs
    zbar
  ];

  colconRunDepends = [
    cv_bridge
    rclcpp
    sensor_msgs
    std_msgs
    zbar
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
