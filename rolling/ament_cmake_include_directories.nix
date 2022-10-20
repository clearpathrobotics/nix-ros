{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_include_directories";
  pkgFinal = final.rolling.ament_cmake_include_directories;
  src = srcs.ament_cmake.ament_cmake_include_directories;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
  ];
}
