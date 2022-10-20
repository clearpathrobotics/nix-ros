{
  ament_cmake,
  ament_cmake_gmock,
  control_msgs,
  lifecycle_msgs,
  pluginlib,
  rclcpp_lifecycle,
  rcpputils,
  rcutils,
  ros2_control_test_assets,
  tinyxml2_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hardware_interface";
  pkgFinal = final.rolling.hardware_interface;
  src = srcs.ros2_control.hardware_interface;

  colconBuildDepends = [
    ament_cmake
    control_msgs
    lifecycle_msgs
    pluginlib
    rclcpp_lifecycle
    rcpputils
    rcutils
    tinyxml2_vendor
  ];

  colconRunDepends = [
    control_msgs
    lifecycle_msgs
    pluginlib
    rclcpp_lifecycle
    rcpputils
    rcutils
    tinyxml2_vendor
  ];

  colconTestDepends = [
    ament_cmake_gmock
    ros2_control_test_assets
  ];
}
