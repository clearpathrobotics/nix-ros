{
  ament_cmake_ros,
  example_interfaces,
  lifecycle_msgs,
  rcl,
  rclc,
  rclc_lifecycle,
  rclc_parameter,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rclc_examples";
  pkgFinal = final.rolling.rclc_examples;
  src = srcs.rclc.rclc_examples;

  colconBuildDepends = [
    ament_cmake_ros
    example_interfaces
    lifecycle_msgs
    rcl
    rclc
    rclc_lifecycle
    rclc_parameter
    std_msgs
  ];

  colconRunDepends = [
    example_interfaces
    lifecycle_msgs
    rcl
    rclc
    rclc_lifecycle
    rclc_parameter
    std_msgs
  ];

  colconTestDepends = [
  ];
}
