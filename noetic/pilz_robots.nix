{
  catkin,
  pilz_control,
  pilz_status_indicator_rqt,
  prbt_hardware_support,
  prbt_ikfast_manipulator_plugin,
  prbt_moveit_config,
  prbt_support,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pilz_robots";
  pkgFinal = final.noetic.pilz_robots;
  src = srcs.pilz_robots.pilz_robots;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    pilz_control
    pilz_status_indicator_rqt
    prbt_hardware_support
    prbt_ikfast_manipulator_plugin
    prbt_moveit_config
    prbt_support
  ];

  colconTestDepends = [
  ];
}
