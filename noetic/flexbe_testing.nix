{
  catkin,
  flexbe_core,
  flexbe_msgs,
  rospy,
  rostest,
  rosunit,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_testing";
  pkgFinal = final.noetic.flexbe_testing;
  src = srcs.flexbe.flexbe_testing;

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
    rosunit
    std_msgs
  ];
}
