{
  catkin,
  geometry_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_legged_robots";
  pkgFinal = final.noetic.teleop_legged_robots;
  src = srcs.teleop_legged_robots.teleop_legged_robots;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
