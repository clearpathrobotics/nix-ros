{
  ament_cmake,
  tinyxml-2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tinyxml2_vendor";
  pkgFinal = final.rolling.tinyxml2_vendor;
  src = srcs.tinyxml2_vendor.tinyxml2_vendor;

  colconBuildDepends = [
    ament_cmake
    tinyxml-2
  ];

  colconRunDepends = [
    tinyxml-2
  ];

  colconTestDepends = [
  ];
}
