{
  ament_cmake_core,
  ament_cmake_include_directories,
  ament_cmake_libraries,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_target_dependencies";
  pkgFinal = final.rolling.ament_cmake_target_dependencies;
  src = srcs.ament_cmake.ament_cmake_target_dependencies;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_cmake_include_directories
    ament_cmake_libraries
  ];

  colconTestDepends = [
  ];
}
