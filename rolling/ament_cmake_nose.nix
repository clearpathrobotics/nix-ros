{
  ament_cmake_core,
  ament_cmake_test,
  python3Packages,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_nose";
  pkgFinal = final.rolling.ament_cmake_nose;
  src = srcs.ament_cmake.ament_cmake_nose;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_cmake_test
    python3Packages.nose
  ];

  colconTestDepends = [
  ];
}
