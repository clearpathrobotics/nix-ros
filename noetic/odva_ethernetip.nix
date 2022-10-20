{
  boost,
  catkin,
  console-bridge,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "odva_ethernetip";
  pkgFinal = final.noetic.odva_ethernetip;
  src = srcs.odva_ethernetip.odva_ethernetip;

  colconBuildDepends = [
    boost
    catkin
    console-bridge
  ];

  colconRunDepends = [
    boost
    console-bridge
  ];

  colconTestDepends = [
    rosunit
  ];
}
