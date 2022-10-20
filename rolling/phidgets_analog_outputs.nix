{
  ament_cmake_ros,
  phidgets_api,
  phidgets_msgs,
  rclcpp,
  rclcpp_components,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "phidgets_analog_outputs";
  pkgFinal = final.rolling.phidgets_analog_outputs;
  src = srcs.phidgets_drivers.phidgets_analog_outputs;

  colconBuildDepends = [
    ament_cmake_ros
    phidgets_api
    phidgets_msgs
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconRunDepends = [
    phidgets_api
    phidgets_msgs
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconTestDepends = [
  ];
}
