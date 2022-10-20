{
  ament_cmake,
  pkg-config,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "menge_vendor";
  pkgFinal = final.rolling.menge_vendor;
  src = srcs.menge_vendor.menge_vendor;

  colconBuildDepends = [
    ament_cmake
    pkg-config
    tinyxml
  ];

  colconRunDepends = [
    tinyxml
  ];

  colconTestDepends = [
  ];
}
