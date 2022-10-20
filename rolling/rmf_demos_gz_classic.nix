{
  ament_cmake,
  gazebo_plugins,
  joy,
  launch_xml,
  rmf_building_sim_gz_classic_plugins,
  rmf_demos,
  rmf_robot_sim_gz_classic_plugins,
  teleop_twist_joy,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_gz_classic";
  pkgFinal = final.rolling.rmf_demos_gz_classic;
  src = srcs.rmf_demos.rmf_demos_gz_classic;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    gazebo_plugins
    joy
    launch_xml
    rmf_building_sim_gz_classic_plugins
    rmf_demos
    rmf_robot_sim_gz_classic_plugins
    teleop_twist_joy
  ];

  colconTestDepends = [
  ];
}
