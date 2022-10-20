{
  catkin,
  nav2d_navigator,
  nav2d_operator,
  roscpp,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2d_remote";
  pkgFinal = final.noetic.nav2d_remote;
  src = srcs.navigation_2d.nav2d_remote;

  colconBuildDepends = [
    catkin
    nav2d_navigator
    nav2d_operator
    roscpp
    sensor_msgs
  ];

  colconRunDepends = [
    nav2d_navigator
    nav2d_operator
    roscpp
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
