{
  angles,
  base_local_planner,
  catkin,
  costmap_2d,
  eigen,
  nav_core,
  pluginlib,
  roscpp,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "carrot_planner";
  pkgFinal = final.noetic.carrot_planner;
  src = srcs.navigation.carrot_planner;

  colconBuildDepends = [
    angles
    base_local_planner
    catkin
    costmap_2d
    eigen
    nav_core
    pluginlib
    roscpp
    tf2
    tf2_geometry_msgs
    tf2_ros
  ];

  colconRunDepends = [
    angles
    base_local_planner
    costmap_2d
    eigen
    nav_core
    pluginlib
    roscpp
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
