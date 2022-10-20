{
  ament_cmake,
  eigen,
  gazebo_dev,
  gazebo_ros,
  geometry_msgs,
  rclcpp,
  rmf_building_map_msgs,
  rmf_fleet_msgs,
  rmf_robot_sim_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_robot_sim_gz_classic_plugins";
  pkgFinal = final.rolling.rmf_robot_sim_gz_classic_plugins;
  src = srcs.rmf_simulation.rmf_robot_sim_gz_classic_plugins;

  colconBuildDepends = [
    ament_cmake
    eigen
    gazebo_dev
    gazebo_ros
    geometry_msgs
    rclcpp
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_robot_sim_common
  ];

  colconRunDepends = [
    eigen
    gazebo_dev
    gazebo_ros
    geometry_msgs
    rclcpp
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_robot_sim_common
  ];

  colconTestDepends = [
  ];
}
