{
  ament_cmake_ros,
  launch,
  phidgets_api,
  phidgets_msgs,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_high_speed_encoder";
  pkgFinal = final.rolling.phidgets_high_speed_encoder;
  src = srcs.phidgets_drivers.phidgets_high_speed_encoder;

  colconBuildDepends = [
    ament_cmake_ros
    phidgets_api
    phidgets_msgs
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    launch
    phidgets_api
    phidgets_msgs
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
