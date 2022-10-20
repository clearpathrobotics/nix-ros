{
  boost,
  eigen,
  gtest,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_core";
  pkgFinal = final.noetic.lanelet2_core;
  src = srcs.lanelet2.lanelet2_core;

  colconBuildDepends = [
    boost
    eigen
    mrt_cmake_modules
  ];

  colconRunDepends = [
    boost
    eigen
    mrt_cmake_modules
  ];

  colconTestDepends = [
    gtest
  ];
}
