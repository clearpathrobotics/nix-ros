{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  class_loader,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "laser_proc";
  pkgFinal = final.rolling.laser_proc;
  src = srcs.laser_proc.laser_proc;

  colconBuildDepends = [
    ament_cmake
    class_loader
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    class_loader
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
