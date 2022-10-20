{
  ament_cmake_core,
  ament_cmake_export_definitions,
  ament_cmake_export_dependencies,
  ament_cmake_export_include_directories,
  ament_cmake_export_interfaces,
  ament_cmake_export_libraries,
  ament_cmake_export_link_flags,
  ament_cmake_export_targets,
  ament_cmake_gen_version_h,
  ament_cmake_libraries,
  ament_cmake_python,
  ament_cmake_target_dependencies,
  ament_cmake_test,
  ament_cmake_version,
  cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake";
  pkgFinal = final.rolling.ament_cmake;
  src = srcs.ament_cmake.ament_cmake;

  colconBuildDepends = [
    ament_cmake_core
    ament_cmake_export_dependencies
    cmake
  ];

  colconRunDepends = [
    ament_cmake_core
    ament_cmake_export_definitions
    ament_cmake_export_dependencies
    ament_cmake_export_include_directories
    ament_cmake_export_interfaces
    ament_cmake_export_libraries
    ament_cmake_export_link_flags
    ament_cmake_export_targets
    ament_cmake_gen_version_h
    ament_cmake_libraries
    ament_cmake_python
    ament_cmake_target_dependencies
    ament_cmake_test
    ament_cmake_version
    cmake
  ];

  colconTestDepends = [
  ];
}
