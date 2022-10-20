{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  boost,
  builtin_interfaces,
  diagnostic_updater,
  laser_proc,
  rclcpp,
  rclcpp_components,
  rosidl_default_generators,
  sensor_msgs,
  std_srvs,
  urg_c,
  urg_node_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urg_node";
  pkgFinal = final.rolling.urg_node;
  src = srcs.urg_node.urg_node;

  colconBuildDepends = [
    ament_cmake
    boost
    builtin_interfaces
    diagnostic_updater
    laser_proc
    rclcpp
    rclcpp_components
    rosidl_default_generators
    sensor_msgs
    std_srvs
    urg_c
    urg_node_msgs
  ];

  colconRunDepends = [
    boost
    builtin_interfaces
    diagnostic_updater
    laser_proc
    rclcpp
    rclcpp_components
    rosidl_default_generators
    sensor_msgs
    std_srvs
    urg_c
    urg_node_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
