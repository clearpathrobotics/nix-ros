{
  catkin,
  eigen,
  geometry_msgs,
  nav2d_localizer,
  nav2d_msgs,
  nav_msgs,
  roscpp,
  suitesparse,
  tbb,
  tf,
  visualization_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2d_karto";
  pkgFinal = final.noetic.nav2d_karto;
  src = srcs.navigation_2d.nav2d_karto;

  colconBuildDepends = [
    catkin
    eigen
    geometry_msgs
    nav2d_localizer
    nav2d_msgs
    nav_msgs
    roscpp
    suitesparse
    tbb
    tf
    visualization_msgs
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    nav2d_localizer
    nav2d_msgs
    nav_msgs
    roscpp
    suitesparse
    tbb
    tf
    visualization_msgs
  ];

  colconTestDepends = [
  ];
}
