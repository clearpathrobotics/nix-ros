{
  catkin,
  cob_bringup,
  cob_default_robot_behavior,
  cob_default_robot_config,
  cob_hardware_config,
  cob_moveit_config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_robots";
  pkgFinal = final.noetic.cob_robots;
  src = srcs.cob_robots.cob_robots;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cob_bringup
    cob_default_robot_behavior
    cob_default_robot_config
    cob_hardware_config
    cob_moveit_config
  ];

  colconTestDepends = [
  ];
}
