{
  cmake,
  nlohmann_json,
  python3,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "asyncapi_gencpp";
  pkgFinal = final.rolling.asyncapi_gencpp;
  src = srcs.asyncapi_gencpp.asyncapi_gencpp;

  colconBuildDepends = [
    cmake
    nlohmann_json
    python3
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
