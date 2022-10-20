{
  ament_cmake,
  ament_cmake_uncrustify,
  geometry_msgs,
  rclcpp,
  rclcpp_components,
  rmf_obstacle_msgs,
  rmf_utils,
  rmf_visualization_msgs,
  vision_msgs,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_visualization_obstacles";
  pkgFinal = final.rolling.rmf_visualization_obstacles;
  src = srcs.rmf_visualization.rmf_visualization_obstacles;

  colconBuildDepends = [
    ament_cmake
    geometry_msgs
    rclcpp
    rclcpp_components
    rmf_obstacle_msgs
    rmf_visualization_msgs
    vision_msgs
    visualization_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    rclcpp
    rclcpp_components
    rmf_obstacle_msgs
    rmf_visualization_msgs
    vision_msgs
    visualization_msgs
  ];

  colconTestDepends = [
    ament_cmake_uncrustify
    rmf_utils
  ];
}
