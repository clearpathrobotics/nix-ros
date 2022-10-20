{
  mir_actions,
  mir_description,
  mir_driver,
  mir_dwb_critics,
  mir_gazebo,
  mir_msgs,
  mir_navigation,
  sdc21x0,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_robot";
  pkgFinal = final.rolling.mir_robot;
  src = srcs.mir_robot.mir_robot;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    mir_actions
    mir_description
    mir_driver
    mir_dwb_critics
    mir_gazebo
    mir_msgs
    mir_navigation
    sdc21x0
  ];

  colconTestDepends = [
  ];
}
