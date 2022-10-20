{
  ament_cmake,
  ament_cmake_gtest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_auto";
  pkgFinal = final.rolling.ament_cmake_auto;
  src = srcs.ament_cmake.ament_cmake_auto;

  colconBuildDepends = [
    ament_cmake
    ament_cmake_gtest
  ];

  colconRunDepends = [
    ament_cmake
    ament_cmake_gtest
  ];

  colconTestDepends = [
  ];
}
