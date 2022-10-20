{
  actionlib,
  actionlib_msgs,
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  mbf_abstract_core,
  mbf_abstract_nav,
  mbf_msgs,
  nav_msgs,
  pluginlib,
  roscpp,
  std_msgs,
  std_srvs,
  tf,
  tf2,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_simple_nav";
  pkgFinal = final.noetic.mbf_simple_nav;
  src = srcs.move_base_flex.mbf_simple_nav;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    dynamic_reconfigure
    geometry_msgs
    mbf_abstract_core
    mbf_abstract_nav
    mbf_msgs
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    std_srvs
    tf
    tf2
    tf2_ros
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    dynamic_reconfigure
    geometry_msgs
    mbf_abstract_core
    mbf_abstract_nav
    mbf_msgs
    nav_msgs
    pluginlib
    roscpp
    std_msgs
    std_srvs
    tf
    tf2
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
