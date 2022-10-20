{
  ament_cmake_catch2,
  ament_cmake_uncrustify,
  nlohmann_json,
  nlohmann_json_schema_validator_vendor,
  rmf_api_msgs,
  rmf_task,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_task_sequence";
  pkgFinal = final.rolling.rmf_task_sequence;
  src = srcs.rmf_task.rmf_task_sequence;

  colconBuildDepends = [
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rmf_api_msgs
    rmf_task
  ];

  colconRunDepends = [
    nlohmann_json
    nlohmann_json_schema_validator_vendor
    rmf_api_msgs
    rmf_task
  ];

  colconTestDepends = [
    ament_cmake_catch2
    ament_cmake_uncrustify
  ];
}
