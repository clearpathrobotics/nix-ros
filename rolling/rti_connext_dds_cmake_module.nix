{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rti_connext_dds_cmake_module";
  pkgFinal = final.rolling.rti_connext_dds_cmake_module;
  src = srcs.rmw_connextdds.rti_connext_dds_cmake_module;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    ament_cmake
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
