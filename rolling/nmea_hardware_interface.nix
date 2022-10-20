{
  ament_cmake,
  ament_lint_auto,
  boost,
  controller_interface,
  diagnostic_msgs,
  geographic_msgs,
  gtk3,
  hardware_interface,
  nmea_msgs,
  ouxt_lint_common,
  pkg-config,
  pluginlib,
  quaternion_operation,
  rclcpp,
  rclcpp_components,
  realtime_tools,
  ros2_control,
  rviz2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nmea_hardware_interface";
  pkgFinal = final.rolling.nmea_hardware_interface;
  src = srcs.nmea_hardware_interface.nmea_hardware_interface;

  colconBuildDepends = [
    ament_cmake
    boost
    controller_interface
    diagnostic_msgs
    geographic_msgs
    gtk3
    hardware_interface
    nmea_msgs
    pkg-config
    pluginlib
    quaternion_operation
    rclcpp
    rclcpp_components
    realtime_tools
    ros2_control
  ];

  colconRunDepends = [
    boost
    controller_interface
    diagnostic_msgs
    geographic_msgs
    gtk3
    hardware_interface
    nmea_msgs
    pkg-config
    pluginlib
    quaternion_operation
    rclcpp
    rclcpp_components
    realtime_tools
    ros2_control
    rviz2
  ];

  colconTestDepends = [
    ament_lint_auto
    ouxt_lint_common
  ];
}
