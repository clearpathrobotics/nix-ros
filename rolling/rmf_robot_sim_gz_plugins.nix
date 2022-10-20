{
  ament_cmake,
  eigen,
  qt5,
  rclcpp,
  rmf_building_map_msgs,
  rmf_fleet_msgs,
  rmf_robot_sim_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_robot_sim_gz_plugins";
  pkgFinal = final.rolling.rmf_robot_sim_gz_plugins;
  src = srcs.rmf_simulation.rmf_robot_sim_gz_plugins;

  colconBuildDepends = [
    ament_cmake
    eigen
    qt5.qtbase
    qt5.qtdeclarative
    rclcpp
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_robot_sim_common
  ];

  colconRunDepends = [
    eigen
    qt5.qtbase
    qt5.qtdeclarative
    rclcpp
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_robot_sim_common
  ];

  colconTestDepends = [
  ];
}
