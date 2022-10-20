{
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "sdc21x0";
  pkgFinal = final.rolling.sdc21x0;
  src = srcs.mir_robot.sdc21x0;

  colconBuildDepends = [
    std_msgs
  ];

  colconRunDepends = [
    std_msgs
  ];

  colconTestDepends = [
  ];
}
