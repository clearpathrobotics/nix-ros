{
  catkin,
  nav_2d_msgs,
  nav_grid,
  roslint,
  rosunit,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nav_core2";
  pkgFinal = final.noetic.nav_core2;
  src = srcs.robot_navigation.nav_core2;

  colconBuildDepends = [
    catkin
    nav_2d_msgs
    nav_grid
    tf2_ros
  ];

  colconRunDepends = [
    nav_2d_msgs
    nav_grid
    tf2_ros
  ];

  colconTestDepends = [
    roslint
    rosunit
  ];
}
