{
  boost,
  gtest,
  lanelet2_core,
  lanelet2_traffic_rules,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_routing";
  pkgFinal = final.noetic.lanelet2_routing;
  src = srcs.lanelet2.lanelet2_routing;

  colconBuildDepends = [
    boost
    lanelet2_core
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconRunDepends = [
    boost
    lanelet2_core
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconTestDepends = [
    gtest
  ];
}
