{
  catkin,
  geometry_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "clober_tools";
  pkgFinal = final.noetic.clober_tools;
  src = srcs.clober.clober_tools;

  colconBuildDepends = [
    catkin
    geometry_msgs
    rospy
  ];

  colconRunDepends = [
    geometry_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
