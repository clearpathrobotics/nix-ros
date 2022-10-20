{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  rclcpp,
  rcutils,
  sensor_msgs,
  statistics_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "topic_statistics_demo";
  pkgFinal = final.rolling.topic_statistics_demo;
  src = srcs.demos.topic_statistics_demo;

  colconBuildDepends = [
    ament_cmake
    rclcpp
    rcutils
    sensor_msgs
    statistics_msgs
  ];

  colconRunDepends = [
    rclcpp
    rcutils
    sensor_msgs
    statistics_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
