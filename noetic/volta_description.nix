{
  catkin,
  roscpp,
  rospy,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "volta_description";
  pkgFinal = final.noetic.volta_description;
  src = srcs.volta.volta_description;

  colconBuildDepends = [
    catkin
    roscpp
    rospy
    std_msgs
  ];

  colconRunDepends = [
    roscpp
    rospy
    std_msgs
  ];

  colconTestDepends = [
  ];
}
