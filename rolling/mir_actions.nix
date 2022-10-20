{
  geometry_msgs,
  nav_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_actions";
  pkgFinal = final.rolling.mir_actions;
  src = srcs.mir_robot.mir_actions;

  colconBuildDepends = [
    geometry_msgs
    nav_msgs
  ];

  colconRunDepends = [
    geometry_msgs
    nav_msgs
  ];

  colconTestDepends = [
  ];
}
