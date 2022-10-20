{
  catkin,
  dwa_local_planner,
  laser_tilt_controller_filter,
  pr2_move_base,
  pr2_navigation_config,
  pr2_navigation_global,
  pr2_navigation_local,
  pr2_navigation_perception,
  pr2_navigation_self_filter,
  pr2_navigation_slam,
  pr2_navigation_teleop,
  semantic_point_annotator,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_navigation";
  pkgFinal = final.noetic.pr2_navigation;
  src = srcs.pr2_navigation.pr2_navigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    dwa_local_planner
    laser_tilt_controller_filter
    pr2_move_base
    pr2_navigation_config
    pr2_navigation_global
    pr2_navigation_local
    pr2_navigation_perception
    pr2_navigation_self_filter
    pr2_navigation_slam
    pr2_navigation_teleop
    semantic_point_annotator
  ];

  colconTestDepends = [
  ];
}
