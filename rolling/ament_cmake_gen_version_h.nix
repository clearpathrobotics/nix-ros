{
  ament_cmake_core,
  ament_cmake_gtest,
  ament_package,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_gen_version_h";
  pkgFinal = final.rolling.ament_cmake_gen_version_h;
  src = srcs.ament_cmake.ament_cmake_gen_version_h;

  colconBuildDepends = [
    ament_cmake_core
    ament_package
  ];

  colconRunDepends = [
    ament_cmake_core
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
