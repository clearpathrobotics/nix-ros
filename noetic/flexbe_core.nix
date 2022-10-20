{
  catkin,
  diagnostic_msgs,
  flexbe_msgs,
  rospy,
  rostest,
  tf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_core";
  pkgFinal = final.noetic.flexbe_core;
  src = srcs.flexbe.flexbe_core;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    diagnostic_msgs
    flexbe_msgs
    rospy
    tf
  ];

  colconTestDepends = [
  ];
}
