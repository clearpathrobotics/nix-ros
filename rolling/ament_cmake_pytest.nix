{
  ament_cmake_core,
  ament_cmake_test,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_pytest";
  pkgFinal = final.rolling.ament_cmake_pytest;
  src = srcs.ament_cmake.ament_cmake_pytest;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_cmake_test
    python3Packages.pytest
  ];

  colconTestDepends = [
  ];
}
