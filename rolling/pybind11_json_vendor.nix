{
  ament_cmake,
  git,
  nlohmann_json,
  pybind11_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pybind11_json_vendor";
  pkgFinal = final.rolling.pybind11_json_vendor;
  src = srcs.pybind11_json_vendor.pybind11_json_vendor;

  colconBuildDepends = [
    ament_cmake
    git
    nlohmann_json
    pybind11_vendor
  ];

  colconRunDepends = [
    nlohmann_json
    pybind11_vendor
  ];

  colconTestDepends = [
  ];
}
