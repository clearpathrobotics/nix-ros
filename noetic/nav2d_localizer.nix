{
  catkin,
  geometry_msgs,
  nav_msgs,
  roscpp,
  sensor_msgs,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2d_localizer";
  pkgFinal = final.noetic.nav2d_localizer;
  src = srcs.navigation_2d.nav2d_localizer;

  colconBuildDepends = [
    catkin
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
    roscpp
    sensor_msgs
    tf
  ];

  colconTestDepends = [
  ];
}
