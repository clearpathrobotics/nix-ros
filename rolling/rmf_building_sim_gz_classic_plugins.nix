{
  ament_cmake,
  gazebo_dev,
  gazebo_ros,
  menge_vendor,
  opencv,
  qt5,
  rclcpp,
  rmf_building_sim_common,
  rmf_fleet_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_building_sim_gz_classic_plugins";
  pkgFinal = final.rolling.rmf_building_sim_gz_classic_plugins;
  src = srcs.rmf_simulation.rmf_building_sim_gz_classic_plugins;

  colconBuildDepends = [
    ament_cmake
    gazebo_dev
    gazebo_ros
    menge_vendor
    opencv
    qt5.qtbase
    rclcpp
    rmf_building_sim_common
    rmf_fleet_msgs
  ];

  colconRunDepends = [
    gazebo_dev
    gazebo_ros
    menge_vendor
    opencv
    qt5.qtbase
    rclcpp
    rmf_building_sim_common
    rmf_fleet_msgs
  ];

  colconTestDepends = [
  ];
}
