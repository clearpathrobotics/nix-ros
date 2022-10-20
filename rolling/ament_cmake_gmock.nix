{
  ament_cmake_core,
  ament_cmake_gtest,
  ament_cmake_test,
  gmock_vendor,
  gtest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_gmock";
  pkgFinal = final.rolling.ament_cmake_gmock;
  src = srcs.ament_cmake.ament_cmake_gmock;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_gtest
    ament_cmake_test
    gmock_vendor
    gtest
  ];

  colconTestDepends = [
  ];
}
