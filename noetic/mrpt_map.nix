{
  catkin,
  mrpt2,
  nav_msgs,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mrpt_map";
  pkgFinal = final.noetic.mrpt_map;
  src = srcs.mrpt_navigation.mrpt_map;

  colconBuildDepends = [
    catkin
    mrpt2
    nav_msgs
    roscpp
  ];

  colconRunDepends = [
    mrpt2
    nav_msgs
    roscpp
  ];

  colconTestDepends = [
  ];
}
