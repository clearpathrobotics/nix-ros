{
  mir_driver,
  mir_dwb_critics,
  mir_gazebo,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_navigation";
  pkgFinal = final.rolling.mir_navigation;
  src = srcs.mir_robot.mir_navigation;

  colconBuildDepends = [
  ];

  colconRunDepends = [
    mir_driver
    mir_dwb_critics
    mir_gazebo
    python3Packages.matplotlib
  ];

  colconTestDepends = [
  ];
}
