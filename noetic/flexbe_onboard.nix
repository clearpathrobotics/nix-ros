{
  catkin,
  flexbe_core,
  flexbe_msgs,
  rospy,
  rostest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_onboard";
  pkgFinal = final.noetic.flexbe_onboard;
  src = srcs.flexbe.flexbe_onboard;

  colconBuildDepends = [
    catkin
    rostest
  ];

  colconRunDepends = [
    flexbe_core
    flexbe_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
