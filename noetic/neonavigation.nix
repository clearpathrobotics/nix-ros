{
  catkin,
  costmap_cspace,
  joystick_interrupt,
  map_organizer,
  neonavigation_common,
  neonavigation_launch,
  obj_to_pointcloud,
  planner_cspace,
  safety_limiter,
  track_odometry,
  trajectory_tracker,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "neonavigation";
  pkgFinal = final.noetic.neonavigation;
  src = srcs.neonavigation.neonavigation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    costmap_cspace
    joystick_interrupt
    map_organizer
    neonavigation_common
    neonavigation_launch
    obj_to_pointcloud
    planner_cspace
    safety_limiter
    track_odometry
    trajectory_tracker
  ];

  colconTestDepends = [
  ];
}
