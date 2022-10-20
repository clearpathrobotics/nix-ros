{
  angles,
  geometry_msgs,
  pluginlib,
  python3Packages,
  sensor_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "mir_dwb_critics";
  pkgFinal = final.rolling.mir_dwb_critics;
  src = srcs.mir_robot.mir_dwb_critics;

  colconBuildDepends = [
    angles
    geometry_msgs
    pluginlib
    sensor_msgs
  ];

  colconRunDepends = [
    angles
    geometry_msgs
    pluginlib
    python3Packages.matplotlib
    sensor_msgs
  ];

  colconTestDepends = [
  ];
}
