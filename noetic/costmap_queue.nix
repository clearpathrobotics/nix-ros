{
  catkin,
  nav_core2,
  roscpp,
  roslint,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "costmap_queue";
  pkgFinal = final.noetic.costmap_queue;
  src = srcs.robot_navigation.costmap_queue;

  colconBuildDepends = [
    catkin
    nav_core2
    roscpp
  ];

  colconRunDepends = [
    nav_core2
    roscpp
  ];

  colconTestDepends = [
    roslint
    rosunit
  ];
}
