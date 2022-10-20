{
  ament_lint_auto,
  ament_lint_common,
  lifecycle,
  lifecycle_msgs,
  rclpy,
  ros_testing,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lifecycle_py";
  pkgFinal = final.rolling.lifecycle_py;
  src = srcs.demos.lifecycle_py;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    lifecycle_msgs
    rclpy
    std_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    lifecycle
    ros_testing
  ];
}
