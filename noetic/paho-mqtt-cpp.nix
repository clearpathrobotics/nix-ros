{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "paho-mqtt-cpp";
  pkgFinal = final.noetic.paho-mqtt-cpp;
  src = srcs.paho-mqtt-cpp.paho-mqtt-cpp;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
