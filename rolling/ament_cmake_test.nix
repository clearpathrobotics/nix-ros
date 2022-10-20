{
  ament_cmake_core,
  ament_cmake_python,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_test";
  pkgFinal = final.rolling.ament_cmake_test;
  src = srcs.ament_cmake.ament_cmake_test;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_python
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
  ];
}
