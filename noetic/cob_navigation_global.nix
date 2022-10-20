{
  amcl,
  catkin,
  cob_default_env_config,
  cob_linear_nav,
  cob_navigation_config,
  cob_scan_unifier,
  cob_supported_robots,
  dwa_local_planner,
  map_server,
  move_base,
  roslaunch,
  rviz,
  topic_tools,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_navigation_global";
  pkgFinal = final.noetic.cob_navigation_global;
  src = srcs.cob_navigation.cob_navigation_global;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    amcl
    cob_default_env_config
    cob_linear_nav
    cob_navigation_config
    cob_scan_unifier
    dwa_local_planner
    map_server
    move_base
    rviz
    topic_tools
  ];

  colconTestDepends = [
    cob_default_env_config
    cob_supported_robots
    roslaunch
  ];
}
