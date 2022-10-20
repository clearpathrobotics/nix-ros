{
  catkin,
  nav2d_exploration,
  nav2d_karto,
  nav2d_localizer,
  nav2d_msgs,
  nav2d_navigator,
  nav2d_operator,
  nav2d_remote,
  nav2d_tutorials,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav2d";
  pkgFinal = final.noetic.nav2d;
  src = srcs.navigation_2d.nav2d;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    nav2d_exploration
    nav2d_karto
    nav2d_localizer
    nav2d_msgs
    nav2d_navigator
    nav2d_operator
    nav2d_remote
    nav2d_tutorials
  ];

  colconTestDepends = [
  ];
}
