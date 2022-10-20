{
  ament_cmake,
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  eigen,
  nlohmann_json,
  nlohmann_json_schema_validator_vendor,
  rclcpp,
  rmf_api_msgs,
  rmf_task_msgs,
  rmf_traffic,
  rmf_traffic_ros2,
  rmf_utils,
  rmf_websocket,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_task_ros2";
  pkgFinal = final.rolling.rmf_task_ros2;
  src = srcs.rmf_ros2.rmf_task_ros2;

  colconBuildDepends = [
    ament_cmake
    eigen
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rclcpp
    rmf_api_msgs
    rmf_task_msgs
    rmf_traffic
    rmf_traffic_ros2
    rmf_utils
    rmf_websocket
  ];

  colconRunDepends = [
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rclcpp
    rmf_api_msgs
    rmf_task_msgs
    rmf_traffic
    rmf_traffic_ros2
    rmf_utils
    rmf_websocket
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
