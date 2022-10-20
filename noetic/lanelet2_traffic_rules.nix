{
  gtest,
  lanelet2_core,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_traffic_rules";
  pkgFinal = final.noetic.lanelet2_traffic_rules;
  src = srcs.lanelet2.lanelet2_traffic_rules;

  colconBuildDepends = [
    lanelet2_core
    mrt_cmake_modules
  ];

  colconRunDepends = [
    lanelet2_core
    mrt_cmake_modules
  ];

  colconTestDepends = [
    gtest
  ];
}
