{
  catkin,
  cob_navigation_config,
  cob_supported_robots,
  dwa_local_planner,
  move_base,
  roslaunch,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_navigation_local";
  pkgFinal = final.noetic.cob_navigation_local;
  src = srcs.cob_navigation.cob_navigation_local;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_navigation_config
    dwa_local_planner
    move_base
    rviz
  ];

  colconTestDepends = [
    cob_supported_robots
    roslaunch
  ];
}
