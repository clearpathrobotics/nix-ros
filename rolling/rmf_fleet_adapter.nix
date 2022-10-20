{
  ament_cmake,
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  eigen,
  libyamlcpp,
  nlohmann_json,
  nlohmann_json_schema_validator_vendor,
  rclcpp,
  rclcpp_components,
  rmf_api_msgs,
  rmf_battery,
  rmf_building_map_msgs,
  rmf_dispenser_msgs,
  rmf_door_msgs,
  rmf_fleet_msgs,
  rmf_ingestor_msgs,
  rmf_lift_msgs,
  rmf_task,
  rmf_task_msgs,
  rmf_task_ros2,
  rmf_task_sequence,
  rmf_traffic,
  rmf_traffic_ros2,
  rmf_utils,
  rmf_websocket,
  std_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_fleet_adapter";
  pkgFinal = final.rolling.rmf_fleet_adapter;
  src = srcs.rmf_ros2.rmf_fleet_adapter;

  colconBuildDepends = [
    ament_cmake
    eigen
    libyamlcpp
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rclcpp
    rclcpp_components
    rmf_api_msgs
    rmf_battery
    rmf_building_map_msgs
    rmf_dispenser_msgs
    rmf_door_msgs
    rmf_fleet_msgs
    rmf_ingestor_msgs
    rmf_lift_msgs
    rmf_task
    rmf_task_msgs
    rmf_task_ros2
    rmf_task_sequence
    rmf_traffic
    rmf_traffic_ros2
    rmf_utils
    rmf_websocket
    std_msgs
  ];

  colconRunDepends = [
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rclcpp
    rclcpp_components
    rmf_api_msgs
    rmf_battery
    rmf_building_map_msgs
    rmf_dispenser_msgs
    rmf_door_msgs
    rmf_fleet_msgs
    rmf_ingestor_msgs
    rmf_lift_msgs
    rmf_task
    rmf_task_msgs
    rmf_task_ros2
    rmf_task_sequence
    rmf_traffic
    rmf_traffic_ros2
    rmf_utils
    rmf_websocket
    std_msgs
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
