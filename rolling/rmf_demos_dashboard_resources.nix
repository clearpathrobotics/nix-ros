{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_dashboard_resources";
  pkgFinal = final.rolling.rmf_demos_dashboard_resources;
  src = srcs.rmf_demos.rmf_demos_dashboard_resources;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
