{
  geometry_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_msgs";
  pkgFinal = final.rolling.mir_msgs;
  src = srcs.mir_robot.mir_msgs;

  colconBuildDepends = [
    geometry_msgs
  ];

  colconRunDepends = [
    geometry_msgs
  ];

  colconTestDepends = [
  ];
}
