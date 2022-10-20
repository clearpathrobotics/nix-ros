{
  ament_cmake,
  eigen,
  geometry_msgs,
  rclcpp,
  rmf_building_map_msgs,
  rmf_dispenser_msgs,
  rmf_fleet_msgs,
  rmf_ingestor_msgs,
  std_msgs,
  tf2_ros,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_robot_sim_common";
  pkgFinal = final.rolling.rmf_robot_sim_common;
  src = srcs.rmf_simulation.rmf_robot_sim_common;

  colconBuildDepends = [
    ament_cmake
    eigen
    geometry_msgs
    rclcpp
    rmf_building_map_msgs
    rmf_dispenser_msgs
    rmf_fleet_msgs
    rmf_ingestor_msgs
    std_msgs
    tf2_ros
  ];

  colconRunDepends = [
    eigen
    geometry_msgs
    rclcpp
    rmf_building_map_msgs
    rmf_dispenser_msgs
    rmf_fleet_msgs
    rmf_ingestor_msgs
    std_msgs
    tf2_ros
  ];

  colconTestDepends = [
  ];
}
