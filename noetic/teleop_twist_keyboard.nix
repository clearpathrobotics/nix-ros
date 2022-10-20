{
  catkin,
  geometry_msgs,
  rospy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "teleop_twist_keyboard";
  pkgFinal = final.noetic.teleop_twist_keyboard;
  src = srcs.teleop_twist_keyboard.teleop_twist_keyboard;

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
