{
  catkin,
  flexbe_core,
  flexbe_mirror,
  flexbe_msgs,
  flexbe_onboard,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_widget";
  pkgFinal = final.noetic.flexbe_widget;
  src = srcs.flexbe.flexbe_widget;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    flexbe_core
    flexbe_mirror
    flexbe_msgs
    flexbe_onboard
    rospy
  ];

  colconTestDepends = [
  ];
}
