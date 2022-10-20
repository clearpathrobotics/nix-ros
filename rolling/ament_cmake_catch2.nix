{
  ament_cmake_core,
  ament_cmake_test,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ament_cmake_catch2";
  pkgFinal = final.rolling.ament_cmake_catch2;
  src = srcs.ament_cmake_catch2.ament_cmake_catch2;

  colconBuildDepends = [
    ament_cmake_core
  ];

  colconRunDepends = [
    ament_cmake_test
  ];

  colconTestDepends = [
  ];
}
