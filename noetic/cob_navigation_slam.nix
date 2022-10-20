{
  catkin,
  cob_mapping_slam,
  cob_navigation_config,
  cob_navigation_global,
  cob_supported_robots,
  roslaunch,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_navigation_slam";
  pkgFinal = final.noetic.cob_navigation_slam;
  src = srcs.cob_navigation.cob_navigation_slam;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_mapping_slam
    cob_navigation_config
    cob_navigation_global
    rviz
  ];

  colconTestDepends = [
    cob_supported_robots
    roslaunch
  ];
}
