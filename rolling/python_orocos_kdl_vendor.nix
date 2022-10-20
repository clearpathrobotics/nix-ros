{
  ament_cmake,
  ament_cmake_python,
  ament_lint_auto,
  ament_lint_common,
  orocos_kdl_vendor,
  pybind11_vendor,
  python3Packages,
  python_cmake_module,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "python_orocos_kdl_vendor";
  pkgFinal = final.rolling.python_orocos_kdl_vendor;
  src = srcs.orocos_kdl_vendor.python_orocos_kdl_vendor;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    orocos_kdl_vendor
    pybind11_vendor
    python3Packages.pykdl
    python_cmake_module
  ];

  colconRunDepends = [
    orocos_kdl_vendor
    pybind11_vendor
    python3Packages.pykdl
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
