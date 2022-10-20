{
  ament_cmake,
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  boost,
  eigen,
  nlohmann_json,
  nlohmann_json_schema_validator_vendor,
  rclcpp,
  rmf_utils,
  websocketpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_websocket";
  pkgFinal = final.rolling.rmf_websocket;
  src = srcs.rmf_ros2.rmf_websocket;

  colconBuildDepends = [
    ament_cmake
    boost
    eigen
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rclcpp
    rmf_utils
    websocketpp
  ];

  colconRunDepends = [
    boost
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rclcpp
    rmf_utils
    websocketpp
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
