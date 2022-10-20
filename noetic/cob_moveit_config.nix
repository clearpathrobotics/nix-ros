{
  catkin,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_moveit_config";
  pkgFinal = final.noetic.cob_moveit_config;
  src = srcs.cob_robots.cob_moveit_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    xacro
  ];

  colconTestDepends = [
  ];
}
