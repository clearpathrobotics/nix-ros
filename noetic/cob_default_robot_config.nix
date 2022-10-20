{
  catkin,
  cob_supported_robots,
  roslaunch,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_default_robot_config";
  pkgFinal = final.noetic.cob_default_robot_config;
  src = srcs.cob_robots.cob_default_robot_config;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    cob_supported_robots
    roslaunch
  ];
}
