{
  actionlib,
  actionlib_msgs,
  catkin,
  costmap_2d,
  dynamic_reconfigure,
  geometry_msgs,
  mbf_abstract_nav,
  mbf_costmap_core,
  mbf_msgs,
  mbf_utility,
  move_base,
  move_base_msgs,
  nav_core,
  nav_msgs,
  pluginlib,
  roscpp,
  std_msgs,
  std_srvs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_costmap_nav";
  pkgFinal = final.noetic.mbf_costmap_nav;
  src = srcs.move_base_flex.mbf_costmap_nav;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    mbf_abstract_nav
    mbf_costmap_core
    mbf_msgs
    mbf_utility
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    std_srvs
    tf
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    costmap_2d
    dynamic_reconfigure
    geometry_msgs
    mbf_abstract_nav
    mbf_costmap_core
    mbf_msgs
    mbf_utility
    move_base
    move_base_msgs
    nav_core
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    std_srvs
    tf
  ];

  colconTestDepends = [
  ];
}
