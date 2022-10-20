{
  ament_cmake,
  ament_cmake_python,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "angles";
  pkgFinal = final.rolling.angles;
  src = srcs.angles.angles;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_python
    python3Packages.setuptools
  ];

  colconRunDepends = [
    ament_cmake
  ];

  colconTestDepends = [
  ];
}
