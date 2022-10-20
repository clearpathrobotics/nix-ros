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
  name = "phidgets_analog_inputs";
  pkgFinal = final.rolling.phidgets_analog_inputs;
  src = srcs.phidgets_drivers.phidgets_analog_inputs;

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
