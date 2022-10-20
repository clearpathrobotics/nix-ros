{
  catkin,
  geometry_msgs,
  message_generation,
  message_runtime,
  roscpp,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tuw_geometry_msgs";
  pkgFinal = final.noetic.tuw_geometry_msgs;
  src = srcs.tuw_msgs.tuw_geometry_msgs;

  colconBuildDepends = [
    catkin
    geometry_msgs
    message_generation
    roscpp
    rospy
    std_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    message_runtime
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
