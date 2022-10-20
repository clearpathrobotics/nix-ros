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
  name = "phidgets_magnetometer";
  pkgFinal = final.rolling.phidgets_magnetometer;
  src = srcs.phidgets_drivers.phidgets_magnetometer;

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
