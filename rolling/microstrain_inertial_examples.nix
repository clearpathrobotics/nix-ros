{
  ament_cmake,
  microstrain_inertial_msgs,
  rclcpp,
  rclcpp_components,
  rclpy,
  sensor_msgs,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "microstrain_inertial_examples";
  pkgFinal = final.rolling.microstrain_inertial_examples;
  src = srcs.microstrain_inertial.microstrain_inertial_examples;

  colconBuildDepends = [
    ament_cmake
    microstrain_inertial_msgs
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
  ];

  colconRunDepends = [
    microstrain_inertial_msgs
    rclcpp
    rclcpp_components
    rclpy
    sensor_msgs
    std_msgs
  ];

  colconTestDepends = [
  ];
}
