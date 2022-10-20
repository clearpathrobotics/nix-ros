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
  name = "phidgets_motors";
  pkgFinal = final.rolling.phidgets_motors;
  src = srcs.phidgets_drivers.phidgets_motors;

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
