{
  ament_cmake,
  nlohmann_json,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "nlohmann_json_schema_validator_vendor";
  pkgFinal = final.rolling.nlohmann_json_schema_validator_vendor;
  src = srcs.nlohmann_json_schema_validator_vendor.nlohmann_json_schema_validator_vendor;

  colconBuildDepends = [
    ament_cmake
    nlohmann_json
  ];

  colconRunDepends = [
    nlohmann_json
  ];

  colconTestDepends = [
  ];
}
