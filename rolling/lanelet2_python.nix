{
  boost,
  gtest,
  lanelet2_core,
  lanelet2_io,
  lanelet2_matching,
  lanelet2_projection,
  lanelet2_routing,
  lanelet2_traffic_rules,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_python";
  pkgFinal = final.rolling.lanelet2_python;
  src = srcs.lanelet2.lanelet2_python;

  colconBuildDepends = [
    boost
    lanelet2_core
    lanelet2_io
    lanelet2_matching
    lanelet2_projection
    lanelet2_routing
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconRunDepends = [
    boost
    lanelet2_core
    lanelet2_io
    lanelet2_matching
    lanelet2_projection
    lanelet2_routing
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconTestDepends = [
    gtest
  ];
}
