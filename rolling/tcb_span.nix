{
  ament_cmake,
  ament_cmake_gtest,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tcb_span";
  pkgFinal = final.rolling.tcb_span;
  src = srcs.cpp_polyfills.tcb_span;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_cmake_gtest
  ];
}
