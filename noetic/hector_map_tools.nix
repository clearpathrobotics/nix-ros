{
  catkin,
  eigen,
  nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "hector_map_tools";
  pkgFinal = final.noetic.hector_map_tools;
  src = srcs.hector_slam.hector_map_tools;

  colconBuildDepends = [
    catkin
    eigen
    nav_msgs
  ];

  colconRunDepends = [
    eigen
    nav_msgs
  ];

  colconTestDepends = [
  ];
}
