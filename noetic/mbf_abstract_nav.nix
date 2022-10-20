{
  actionlib,
  actionlib_msgs,
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  mbf_abstract_core,
  mbf_msgs,
  mbf_utility,
  nav_msgs,
  roscpp,
  std_msgs,
  std_srvs,
  tf,
  xmlrpcpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mbf_abstract_nav";
  pkgFinal = final.noetic.mbf_abstract_nav;
  src = srcs.move_base_flex.mbf_abstract_nav;

  colconBuildDepends = [
    actionlib
    actionlib_msgs
    catkin
    dynamic_reconfigure
    geometry_msgs
    mbf_abstract_core
    mbf_msgs
    mbf_utility
    nav_msgs
    roscpp
    std_msgs
    std_srvs
    tf
    xmlrpcpp
  ];

  colconRunDepends = [
    actionlib
    actionlib_msgs
    dynamic_reconfigure
    geometry_msgs
    mbf_abstract_core
    mbf_msgs
    mbf_utility
    nav_msgs
    roscpp
    std_msgs
    std_srvs
    tf
    xmlrpcpp
  ];

  colconTestDepends = [
  ];
}
