{
  ament_cmake,
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  eigen,
  libyamlcpp,
  nlohmann_json,
  proj,
  rclcpp,
  rmf_building_map_msgs,
  rmf_fleet_msgs,
  rmf_site_map_msgs,
  rmf_traffic,
  rmf_traffic_msgs,
  rmf_utils,
  util-linux,
  zlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_traffic_ros2";
  pkgFinal = final.rolling.rmf_traffic_ros2;
  src = srcs.rmf_ros2.rmf_traffic_ros2;

  colconBuildDepends = [
    ament_cmake
    eigen
    libyamlcpp
    nlohmann_json
    proj
    rclcpp
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_site_map_msgs
    rmf_traffic
    rmf_traffic_msgs
    rmf_utils
    util-linux
    zlib
  ];

  colconRunDepends = [
    libyamlcpp
    nlohmann_json
    proj
    rclcpp
    rmf_building_map_msgs
    rmf_fleet_msgs
    rmf_site_map_msgs
    rmf_traffic
    rmf_traffic_msgs
    rmf_utils
    util-linux
    zlib
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
