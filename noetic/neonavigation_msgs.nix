{
  catkin,
  costmap_cspace_msgs,
  map_organizer_msgs,
  planner_cspace_msgs,
  safety_limiter_msgs,
  trajectory_tracker_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neonavigation_msgs";
  pkgFinal = final.noetic.neonavigation_msgs;
  src = srcs.neonavigation_msgs.neonavigation_msgs;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    costmap_cspace_msgs
    map_organizer_msgs
    planner_cspace_msgs
    safety_limiter_msgs
    trajectory_tracker_msgs
  ];

  colconTestDepends = [
  ];
}
