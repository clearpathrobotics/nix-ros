{
  ament_cmake_core,
  ament_cmake_test,
  gtest,
  gtest_vendor,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_gtest";
  pkgFinal = final.rolling.ament_cmake_gtest;
  src = srcs.ament_cmake.ament_cmake_gtest;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_test
    gtest
    gtest_vendor
  ];

  colconTestDepends = [
  ];
}
