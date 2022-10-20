{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_libraries";
  pkgFinal = final.rolling.ament_cmake_libraries;
  src = srcs.ament_cmake.ament_cmake_libraries;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
  ];
}
