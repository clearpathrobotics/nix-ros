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
  name = "phidgets_digital_inputs";
  pkgFinal = final.rolling.phidgets_digital_inputs;
  src = srcs.phidgets_drivers.phidgets_digital_inputs;

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
