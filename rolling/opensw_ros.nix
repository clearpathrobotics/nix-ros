{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  hatchbed_common,
  opensw,
  rclcpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "opensw_ros";
  pkgFinal = final.rolling.opensw_ros;
  src = srcs.opensw_ros.opensw_ros;

  colconBuildDepends = [
    ament_cmake
    hatchbed_common
    opensw
    rclcpp
    sensor_msgs
  ];

  colconRunDepends = [
    hatchbed_common
    opensw
    rclcpp
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
