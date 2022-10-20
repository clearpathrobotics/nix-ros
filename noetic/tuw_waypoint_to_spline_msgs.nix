{
  catkin,
  message_generation,
  message_runtime,
  nav_msgs,
  tuw_nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_waypoint_to_spline_msgs";
  pkgFinal = final.noetic.tuw_waypoint_to_spline_msgs;
  src = srcs.tuw_msgs.tuw_waypoint_to_spline_msgs;

  colconBuildDepends = [
    catkin
    message_generation
    nav_msgs
    tuw_nav_msgs
  ];

  colconRunDepends = [
    message_runtime
    nav_msgs
    tuw_nav_msgs
  ];

  colconTestDepends = [
  ];
}
