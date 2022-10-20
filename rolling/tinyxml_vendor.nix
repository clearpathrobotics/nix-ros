{
  ament_cmake,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tinyxml_vendor";
  pkgFinal = final.rolling.tinyxml_vendor;
  src = srcs.tinyxml_vendor.tinyxml_vendor;

  colconBuildDepends = [
    ament_cmake
    tinyxml
  ];

  colconRunDepends = [
    tinyxml
  ];

  colconTestDepends = [
  ];
}
