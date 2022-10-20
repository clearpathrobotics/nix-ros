{
  ament_cmake,
  launch_xml,
  rmf_building_sim_gz_plugins,
  rmf_demos,
  rmf_robot_sim_gz_plugins,
  teleop_twist_keyboard,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_gz";
  pkgFinal = final.rolling.rmf_demos_gz;
  src = srcs.rmf_demos.rmf_demos_gz;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    launch_xml
    rmf_building_sim_gz_plugins
    rmf_demos
    rmf_robot_sim_gz_plugins
    teleop_twist_keyboard
  ];

  colconTestDepends = [
  ];
}
