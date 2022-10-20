{
  ament_cmake_ros,
  launch,
  phidgets_api,
  rclcpp,
  rclcpp_components,
  sensor_msgs,
  std_msgs,
  std_srvs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_spatial";
  pkgFinal = final.rolling.phidgets_spatial;
  src = srcs.phidgets_drivers.phidgets_spatial;

  colconBuildDepends = [
    ament_cmake_ros
    phidgets_api
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconRunDepends = [
    launch
    phidgets_api
    rclcpp
    rclcpp_components
    sensor_msgs
    std_msgs
    std_srvs
  ];

  colconTestDepends = [
  ];
}
