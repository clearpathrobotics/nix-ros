{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_export_definitions";
  pkgFinal = final.rolling.ament_cmake_export_definitions;
  src = srcs.ament_cmake.ament_cmake_export_definitions;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
  ];
}
