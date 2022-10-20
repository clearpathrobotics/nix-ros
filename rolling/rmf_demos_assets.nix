{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rmf_demos_assets";
  pkgFinal = final.rolling.rmf_demos_assets;
  src = srcs.rmf_demos.rmf_demos_assets;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
