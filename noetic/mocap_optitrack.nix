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
  name = "mocap_optitrack";
  pkgFinal = final.noetic.mocap_optitrack;
  src = srcs.mocap_optitrack.mocap_optitrack;

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
