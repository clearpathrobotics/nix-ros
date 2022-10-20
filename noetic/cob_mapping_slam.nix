{
  catkin,
  cob_navigation_global,
  cob_supported_robots,
  gmapping,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_mapping_slam";
  pkgFinal = final.noetic.cob_mapping_slam;
  src = srcs.cob_navigation.cob_mapping_slam;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_navigation_global
    gmapping
  ];

  colconTestDepends = [
    cob_supported_robots
    roslaunch
  ];
}
