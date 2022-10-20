{
  ament_cmake_core,
  ament_cmake_export_libraries,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_export_interfaces";
  pkgFinal = final.rolling.ament_cmake_export_interfaces;
  src = srcs.ament_cmake.ament_cmake_export_interfaces;

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
