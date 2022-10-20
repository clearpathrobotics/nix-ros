{
  base_local_planner,
  catkin,
  control_box_rst,
  costmap_2d,
  costmap_converter,
  dynamic_reconfigure,
  eigen,
  geometry_msgs,
  interactive_markers,
  mbf_costmap_core,
  mbf_msgs,
  mpc_local_planner_msgs,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  std_msgs,
  teb_local_planner,
  tf2,
  tf2_eigen,
  tf2_geometry_msgs,
  tf2_ros,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mpc_local_planner";
  pkgFinal = final.noetic.mpc_local_planner;
  src = srcs.mpc_local_planner.mpc_local_planner;

  colconBuildDepends = [
    base_local_planner
    catkin
    control_box_rst
    costmap_2d
    costmap_converter
    dynamic_reconfigure
    eigen
    geometry_msgs
    interactive_markers
    mbf_costmap_core
    mbf_msgs
    mpc_local_planner_msgs
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    teb_local_planner
    tf2
    tf2_eigen
    tf2_geometry_msgs
    tf2_ros
    visualization_msgs
  ];

  colconRunDepends = [
    base_local_planner
    control_box_rst
    costmap_2d
    costmap_converter
    dynamic_reconfigure
    eigen
    geometry_msgs
    interactive_markers
    mbf_costmap_core
    mbf_msgs
    mpc_local_planner_msgs
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    teb_local_planner
    tf2
    tf2_ros
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
