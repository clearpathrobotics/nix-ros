{
  catkin,
  genpy,
  rosgraph,
  roslib,
  rosmsg,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosservice";
  pkgFinal = final.noetic.rosservice;
  src = srcs.ros_comm.rosservice;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    genpy
    rosgraph
    roslib
    rosmsg
    rospy
  ];

  colconTestDepends = [
  ];
}
