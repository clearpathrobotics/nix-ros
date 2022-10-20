{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  geometry_msgs,
  rclcpp,
  rclcpp_components,
  rmf_building_map_msgs,
  rmf_fleet_msgs,
  rmf_traffic,
  rmf_traffic_ros2,
  rmf_utils,
  rmf_visualization_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization_navgraphs";
  pkgFinal = final.rolling.rmf_visualization_navgraphs;
  src = srcs.rmf_visualization.rmf_visualization_navgraphs;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rclcpp
    rclcpp_components
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_traffic
    rmf_traffic_ros2
    rmf_visualization_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rclcpp
    rclcpp_components
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_traffic
    rmf_traffic_ros2
    rmf_visualization_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    rmf_utils
  ];
}
