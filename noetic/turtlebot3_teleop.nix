{
  catkin,
  geometry_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "turtlebot3_teleop";
  pkgFinal = final.noetic.turtlebot3_teleop;
  src = srcs.turtlebot3.turtlebot3_teleop;

  colconBuildDepends = [
    catkin
    geometry_msgs
    rospy
  ];

  colconRunDepends = [
    geometry_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
