{
  catkin,
  pr2_app_manager,
  pr2_kinematics,
  pr2_mannequin_mode,
  pr2_position_scripts,
  pr2_teleop_general,
  pr2_tuckarm,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pr2_apps";
  pkgFinal = final.noetic.pr2_apps;
  src = srcs.pr2_apps.pr2_apps;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pr2_app_manager
    pr2_kinematics
    pr2_mannequin_mode
    pr2_position_scripts
    pr2_teleop_general
    pr2_tuckarm
  ];

  colconTestDepends = [
  ];
}
