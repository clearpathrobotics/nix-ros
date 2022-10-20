{
  ament_cmake,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pybind11_vendor";
  pkgFinal = final.rolling.pybind11_vendor;
  src = srcs.pybind11_vendor.pybind11_vendor;

  colconBuildDepends = [
    ament_cmake
    python3Packages.pybind11
  ];

  colconRunDepends = [
    python3Packages.pybind11
  ];

  colconTestDepends = [
  ];
}
