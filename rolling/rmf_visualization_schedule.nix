{
  ament_cmake,
  ament_cmake_uncrustify,
  ament_lint_auto,
  ament_lint_common,
  boost,
  builtin_interfaces,
  eigen,
  geometry_msgs,
  openssl,
  rclcpp,
  rclcpp_components,
  rmf_traffic,
  rmf_traffic_msgs,
  rmf_traffic_ros2,
  rmf_utils,
  rmf_visualization_msgs,
  rosidl_default_generators,
  visualization_msgs,
  websocketpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization_schedule";
  pkgFinal = final.rolling.rmf_visualization_schedule;
  src = srcs.rmf_visualization.rmf_visualization_schedule;

  colconBuildDepends = [
    ament_cmake
    boost
    builtin_interfaces
    eigen
    geometry_msgs
    openssl
    rclcpp
    rclcpp_components
    rmf_traffic
    rmf_traffic_msgs
    rmf_traffic_ros2
    rmf_visualization_msgs
    rosidl_default_generators
    visualization_msgs
    websocketpp
  ];

  colconRunDepends = [
    boost
    builtin_interfaces
    eigen
    geometry_msgs
    openssl
    rclcpp
    rclcpp_components
    rmf_traffic
    rmf_traffic_msgs
    rmf_traffic_ros2
    rmf_visualization_msgs
    rosidl_default_generators
    visualization_msgs
    websocketpp
  ];

  colconTestDepends = [
    ament_cmake_uncrustify
    ament_lint_auto
    ament_lint_common
    rmf_utils
  ];
}
