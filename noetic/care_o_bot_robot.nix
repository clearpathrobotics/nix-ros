{
  catkin,
  cob_bringup,
  cob_manipulation,
  cob_navigation,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "care_o_bot_robot";
  pkgFinal = final.noetic.care_o_bot_robot;
  src = srcs.care-o-bot.care_o_bot_robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_bringup
    cob_manipulation
    cob_navigation
  ];

  colconTestDepends = [
  ];
}
