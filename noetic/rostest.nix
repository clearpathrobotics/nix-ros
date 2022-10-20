{
  boost,
  catkin,
  rosgraph,
  roslaunch,
  rosmaster,
  rospy,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rostest";
  pkgFinal = final.noetic.rostest;
  src = srcs.ros_comm.rostest;

  colconBuildDepends = [
    boost
    catkin
    rosunit
  ];

  colconRunDepends = [
    boost
    rosgraph
    roslaunch
    rosmaster
    rospy
    rosunit
  ];

  colconTestDepends = [
  ];
}
