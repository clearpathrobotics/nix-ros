{
  lanelet2_core,
  lanelet2_examples,
  lanelet2_io,
  lanelet2_maps,
  lanelet2_matching,
  lanelet2_projection,
  lanelet2_python,
  lanelet2_routing,
  lanelet2_traffic_rules,
  lanelet2_validation,
  ros_environment,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "lanelet2";
  pkgFinal = final.noetic.lanelet2;
  src = srcs.lanelet2.lanelet2;

  colconBuildDepends = [
    ros_environment
  ];

  colconRunDepends = [
    lanelet2_core
    lanelet2_examples
    lanelet2_io
    lanelet2_maps
    lanelet2_matching
    lanelet2_projection
    lanelet2_python
    lanelet2_routing
    lanelet2_traffic_rules
    lanelet2_validation
  ];

  colconTestDepends = [
  ];
}
