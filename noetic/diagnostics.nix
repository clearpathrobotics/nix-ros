{
  catkin,
  diagnostic_aggregator,
  diagnostic_analysis,
  diagnostic_common_diagnostics,
  diagnostic_updater,
  self_test,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diagnostics";
  pkgFinal = final.noetic.diagnostics;
  src = srcs.diagnostics.diagnostics;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    diagnostic_aggregator
    diagnostic_analysis
    diagnostic_common_diagnostics
    diagnostic_updater
    self_test
  ];

  colconTestDepends = [
  ];
}
