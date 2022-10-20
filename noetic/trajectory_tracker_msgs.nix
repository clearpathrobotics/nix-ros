{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  roslint,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "trajectory_tracker_msgs";
  pkgFinal = final.noetic.trajectory_tracker_msgs;
  src = srcs.neonavigation_msgs.trajectory_tracker_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    std_msgs
  ];

  colconTestDepends = [
    nav_msgs
    roscpp
    roslint
    rosunit
  ];
}
