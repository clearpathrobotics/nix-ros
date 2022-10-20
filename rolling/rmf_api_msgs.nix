{
  ament_cmake,
  nlohmann_json,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_api_msgs";
  pkgFinal = final.rolling.rmf_api_msgs;
  src = srcs.rmf_api_msgs.rmf_api_msgs;

  colconBuildDepends = [
    ament_cmake
    nlohmann_json
    python3Packages.jinja2
    python3Packages.jsonschema
  ];

  colconRunDepends = [
    nlohmann_json
    python3Packages.jinja2
    python3Packages.jsonschema
  ];

  colconTestDepends = [
  ];
}
