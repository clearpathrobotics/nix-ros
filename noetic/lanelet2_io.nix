{
  boost,
  gtest,
  lanelet2_core,
  mrt_cmake_modules,
  pugixml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_io";
  pkgFinal = final.noetic.lanelet2_io;
  src = srcs.lanelet2.lanelet2_io;

  colconBuildDepends = [
    boost
    lanelet2_core
    mrt_cmake_modules
    pugixml
  ];

  colconRunDepends = [
    boost
    lanelet2_core
    mrt_cmake_modules
    pugixml
  ];

  colconTestDepends = [
    gtest
  ];
}
