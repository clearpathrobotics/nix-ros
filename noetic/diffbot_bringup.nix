{
  catkin,
  teleop_twist_keyboard,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_bringup";
  pkgFinal = final.noetic.diffbot_bringup;
  src = srcs.diffbot.diffbot_bringup;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    teleop_twist_keyboard
  ];

  colconTestDepends = [
  ];
}
