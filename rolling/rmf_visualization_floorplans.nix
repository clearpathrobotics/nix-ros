{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  eigen,
  geometry_msgs,
  nav_msgs,
  opencv,
  rclcpp,
  rclcpp_components,
  rmf_building_map_msgs,
  rmf_utils,
  rmf_visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization_floorplans";
  pkgFinal = final.rolling.rmf_visualization_floorplans;
  src = srcs.rmf_visualization.rmf_visualization_floorplans;

  colconBuildDepends = [
    ament_cmake
    eigen
    geometry_msgs
    nav_msgs
    opencv
    rclcpp
    rclcpp_components
    rmf_building_map_msgs
    rmf_visualization_msgs
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    nav_msgs
    opencv
    rclcpp
    rclcpp_components
    rmf_building_map_msgs
    rmf_visualization_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
    rmf_utils
  ];
}
