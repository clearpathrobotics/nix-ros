{
  ament_cmake_core,
  ament_cmake_export_libraries,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_export_targets";
  pkgFinal = final.rolling.ament_cmake_export_targets;
  src = srcs.ament_cmake.ament_cmake_export_targets;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_cmake_export_libraries
  ];

  colconTestDepends = [
  ];
}
