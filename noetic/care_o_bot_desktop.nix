{
  blender,
  care_o_bot,
  catkin,
  chromium,
  desktop_full,
  disper,
  gimp,
  gitg,
  htop,
  meld,
  openssh,
  robot_upstart,
  terminator,
  texmaker,
  tmux,
  tree,
  vim,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "care_o_bot_desktop";
  pkgFinal = final.noetic.care_o_bot_desktop;
  src = srcs.care-o-bot.care_o_bot_desktop;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    blender
    care_o_bot
    chromium
    desktop_full
    disper
    gimp
    gitg
    htop
    meld
    openssh
    robot_upstart
    terminator
    texmaker
    tmux
    tree
    vim
  ];

  colconTestDepends = [
  ];
}
