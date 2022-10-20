{
  catkin,
  dynamic_reconfigure,
  geometry_msgs,
  nav_msgs,
  roscpp,
  roslaunch,
  roslint,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mocap_nokov";
  pkgFinal = final.noetic.mocap_nokov;
  src = srcs.mocap_nokov.mocap_nokov;

  colconBuildDepends = [
    catkin
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconRunDepends = [
    dynamic_reconfigure
    geometry_msgs
    nav_msgs
    roscpp
    tf
  ];

  colconTestDepends = [
    roslaunch
    roslint
  ];
}
