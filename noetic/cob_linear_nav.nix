{
  actionlib,
  angles,
  catkin,
  cob_srvs,
  geometry_msgs,
  move_base_msgs,
  nav_msgs,
  roscpp,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_linear_nav";
  pkgFinal = final.noetic.cob_linear_nav;
  src = srcs.cob_navigation.cob_linear_nav;

  colconBuildDepends = [
    actionlib
    angles
    catkin
    cob_srvs
    geometry_msgs
    move_base_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconRunDepends = [
    actionlib
    angles
    cob_srvs
    geometry_msgs
    move_base_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconTestDepends = [
  ];
}
