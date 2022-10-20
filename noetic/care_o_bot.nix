{
  care_o_bot_robot,
  care_o_bot_simulation,
  catkin,
  cob_manipulation,
  cob_navigation,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "care_o_bot";
  pkgFinal = final.noetic.care_o_bot;
  src = srcs.care-o-bot.care_o_bot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    care_o_bot_robot
    care_o_bot_simulation
    cob_manipulation
    cob_navigation
  ];

  colconTestDepends = [
  ];
}
