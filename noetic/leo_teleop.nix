{
  catkin,
  joy,
  teleop_twist_joy,
  teleop_twist_keyboard,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_teleop";
  pkgFinal = final.noetic.leo_teleop;
  src = srcs.leo_common.leo_teleop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joy
    teleop_twist_joy
    teleop_twist_keyboard
  ];

  colconTestDepends = [
  ];
}
