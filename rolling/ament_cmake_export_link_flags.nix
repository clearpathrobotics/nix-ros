{
  ament_cmake_core,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_export_link_flags";
  pkgFinal = final.rolling.ament_cmake_export_link_flags;
  src = srcs.ament_cmake.ament_cmake_export_link_flags;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
  ];
}
