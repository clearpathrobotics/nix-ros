{
  catkin,
  geometry_msgs,
  roscpp,
  rospy,
  std_msgs,
  tf,
  turtlesim,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtle_tf";
  pkgFinal = final.noetic.turtle_tf;
  src = srcs.geometry_tutorials.turtle_tf;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    rospy
    std_msgs
    tf
    turtlesim
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    rospy
    std_msgs
    tf
    turtlesim
  ];

  colconTestDepends = [
  ];
}
