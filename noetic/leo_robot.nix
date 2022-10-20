{
  catkin,
  leo,
  leo_bringup,
  leo_fw,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_robot";
  pkgFinal = final.noetic.leo_robot;
  src = srcs.leo_robot.leo_robot;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    leo
    leo_bringup
    leo_fw
  ];

  colconTestDepends = [
  ];
}
