{
  catkin,
  geometry_msgs,
  nav_msgs,
  roscpp,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "inno_sim_interface";
  pkgFinal = final.noetic.inno_sim_interface;
  src = srcs.inno_sim_interface.inno_sim_interface;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    rospy
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    roscpp
    rospy
  ];

  colconTestDepends = [
  ];
}
