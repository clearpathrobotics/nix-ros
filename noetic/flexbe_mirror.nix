{
  catkin,
  flexbe_core,
  flexbe_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_mirror";
  pkgFinal = final.noetic.flexbe_mirror;
  src = srcs.flexbe.flexbe_mirror;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    flexbe_core
    flexbe_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
