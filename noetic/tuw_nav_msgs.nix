{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  nav_msgs,
  roscpp,
  rospy,
  std_msgs,
  tf,
  tuw_geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_nav_msgs";
  pkgFinal = final.noetic.tuw_nav_msgs;
  src = srcs.tuw_msgs.tuw_nav_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    nav_msgs
    roscpp
    rospy
    std_msgs
    tf
    tuw_geometry_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    nav_msgs
    roscpp
    rospy
    std_msgs
    tf
    tuw_geometry_msgs
  ];

  colconTestDepends = [
  ];
}
