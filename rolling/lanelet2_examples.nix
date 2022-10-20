{
  gtest,
  lanelet2_core,
  lanelet2_io,
  lanelet2_matching,
  lanelet2_projection,
  lanelet2_python,
  lanelet2_routing,
  lanelet2_traffic_rules,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_examples";
  pkgFinal = final.rolling.lanelet2_examples;
  src = srcs.lanelet2.lanelet2_examples;

  colconBuildDepends = [
    lanelet2_core
    lanelet2_io
    lanelet2_matching
    lanelet2_projection
    lanelet2_python
    lanelet2_routing
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconRunDepends = [
    lanelet2_core
    lanelet2_io
    lanelet2_matching
    lanelet2_projection
    lanelet2_python
    lanelet2_routing
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconTestDepends = [
    gtest
  ];
}
