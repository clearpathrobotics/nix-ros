{
  gtest,
  lanelet2_core,
  lanelet2_io,
  lanelet2_maps,
  lanelet2_projection,
  lanelet2_traffic_rules,
  mrt_cmake_modules,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2_matching";
  pkgFinal = final.noetic.lanelet2_matching;
  src = srcs.lanelet2.lanelet2_matching;

  colconBuildDepends = [
    lanelet2_core
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconRunDepends = [
    lanelet2_core
    lanelet2_traffic_rules
    mrt_cmake_modules
  ];

  colconTestDepends = [
    gtest
    lanelet2_io
    lanelet2_maps
    lanelet2_projection
  ];
}
