{
  catkin,
  costmap_2d,
  global_planner,
  gpp_interface,
  mbf_costmap_core,
  mbf_costmap_nav,
  mbf_msgs,
  move_base,
  nav_core,
  pluginlib,
  rostest,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gpp_plugin";
  pkgFinal = final.noetic.gpp_plugin;
  src = srcs.gpp.gpp_plugin;

  colconBuildDepends = [
    catkin
    costmap_2d
    gpp_interface
    mbf_costmap_core
    mbf_msgs
    nav_core
    pluginlib
    xmlrpcpp
  ];

  colconRunDepends = [
    costmap_2d
    gpp_interface
    mbf_costmap_core
    mbf_msgs
    nav_core
    pluginlib
    xmlrpcpp
  ];

  colconTestDepends = [
    global_planner
    mbf_costmap_nav
    move_base
    rostest
  ];
}
