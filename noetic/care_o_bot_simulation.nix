{
  catkin,
  cob_bringup_sim,
  cob_manipulation,
  cob_navigation,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "care_o_bot_simulation";
  pkgFinal = final.noetic.care_o_bot_simulation;
  src = srcs.care-o-bot.care_o_bot_simulation;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_bringup_sim
    cob_manipulation
    cob_navigation
  ];

  colconTestDepends = [
  ];
}
