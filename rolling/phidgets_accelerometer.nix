{
  ament_cmake_ros,
  launch,
  phidgets_api,
  rclcpp,
  rclcpp_components,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_accelerometer";
  pkgFinal = final.rolling.phidgets_accelerometer;
  src = srcs.phidgets_drivers.phidgets_accelerometer;

  colconBuildDepends = [
    ament_cmake_ros
    phidgets_api
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconRunDepends = [
    launch
    phidgets_api
    rclcpp
    rclcpp_components
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
