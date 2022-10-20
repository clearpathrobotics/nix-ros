{
  catkin,
  roscpp_tutorials,
  rospy_tutorials,
  turtlesim,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ros_tutorials";
  pkgFinal = final.noetic.ros_tutorials;
  src = srcs.ros_tutorials.ros_tutorials;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    roscpp_tutorials
    rospy_tutorials
    turtlesim
  ];

  colconTestDepends = [
  ];
}
