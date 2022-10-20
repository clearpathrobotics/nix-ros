{
  catkin,
  geometry_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "key_teleop";
  pkgFinal = final.noetic.key_teleop;
  src = srcs.teleop_tools.key_teleop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    geometry_msgs
    rospy
  ];

  colconTestDepends = [
  ];
}
