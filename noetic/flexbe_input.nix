{
  actionlib,
  catkin,
  flexbe_msgs,
  python3Packages,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "flexbe_input";
  pkgFinal = final.noetic.flexbe_input;
  src = srcs.flexbe.flexbe_input;

  colconBuildDepends = [
    actionlib
    catkin
  ];

  colconRunDepends = [
    actionlib
    flexbe_msgs
    python3Packages.six
    rospy
  ];

  colconTestDepends = [
  ];
}
