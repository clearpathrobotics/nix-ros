{
  ament_cmake,
  menge_vendor,
  qt5,
  rclcpp,
  rmf_building_sim_common,
  rmf_fleet_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_building_sim_gz_plugins";
  pkgFinal = final.rolling.rmf_building_sim_gz_plugins;
  src = srcs.rmf_simulation.rmf_building_sim_gz_plugins;

  colconBuildDepends = [
    ament_cmake
    menge_vendor
    qt5.qtbase
    qt5.qtdeclarative
    rclcpp
    rmf_building_sim_common
    rmf_fleet_msgs
  ];

  colconRunDepends = [
    menge_vendor
    qt5.qtbase
    qt5.qtdeclarative
    rclcpp
    rmf_building_sim_common
    rmf_fleet_msgs
  ];

  colconTestDepends = [
  ];
}
