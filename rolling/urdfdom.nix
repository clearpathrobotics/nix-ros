{
  cmake,
  console-bridge,
  console_bridge_vendor,
  python3,
  tinyxml,
  tinyxml_vendor,
  urdfdom_headers,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "urdfdom";
  pkgFinal = final.rolling.urdfdom;
  src = srcs.urdfdom.urdfdom;

  colconBuildDepends = [
    cmake
    console-bridge
    console_bridge_vendor
    tinyxml
    tinyxml_vendor
    urdfdom_headers
  ];

  colconRunDepends = [
    console-bridge
    console_bridge_vendor
    tinyxml
    tinyxml_vendor
    urdfdom_headers
  ];

  colconTestDepends = [
    python3
  ];
}
