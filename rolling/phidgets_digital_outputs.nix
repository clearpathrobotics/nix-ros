{
  ament_cmake_ros,
  launch,
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
  name = "phidgets_digital_outputs";
  pkgFinal = final.rolling.phidgets_digital_outputs;
  src = srcs.phidgets_drivers.phidgets_digital_outputs;

  colconBuildDepends = [
    ament_cmake_ros
    phidgets_api
    phidgets_msgs
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconRunDepends = [
    launch
    phidgets_api
    phidgets_msgs
    rclcpp
    rclcpp_components
    std_msgs
  ];

  colconTestDepends = [
  ];
}
