{
  ament_cmake_ros,
  launch,
  phidgets_api,
  rclcpp,
  rclcpp_components,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_temperature";
  pkgFinal = final.rolling.phidgets_temperature;
  src = srcs.phidgets_drivers.phidgets_temperature;

  colconBuildDepends = [
    ament_cmake_ros
    phidgets_api
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconRunDepends = [
    launch
    phidgets_api
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconTestDepends = [
  ];
}
