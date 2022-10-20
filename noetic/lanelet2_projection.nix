{
  geographiclib,
  gtest,
  lanelet2_io,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_projection";
  pkgFinal = final.noetic.lanelet2_projection;
  src = srcs.lanelet2.lanelet2_projection;

  colconBuildDepends = [
    geographiclib
    lanelet2_io
    mrt_cmake_modules
  ];

  colconRunDepends = [
    geographiclib
    lanelet2_io
    mrt_cmake_modules
  ];

  colconTestDepends = [
    gtest
  ];
}
