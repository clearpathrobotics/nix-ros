{
  catkin,
  geometry_msgs,
  roscpp,
  rospy,
  std_msgs,
  tf2,
  tf2_geometry_msgs,
  tf2_ros,
  turtlesim,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtle_tf2";
  pkgFinal = final.noetic.turtle_tf2;
  src = srcs.geometry_tutorials.turtle_tf2;

  colconBuildDepends = [
    catkin
    geometry_msgs
    roscpp
    rospy
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    turtlesim
  ];

  colconRunDepends = [
    geometry_msgs
    roscpp
    rospy
    std_msgs
    tf2
    tf2_geometry_msgs
    tf2_ros
    turtlesim
  ];

  colconTestDepends = [
  ];
}
