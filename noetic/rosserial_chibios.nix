{
  catkin,
  rosserial_client,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_chibios";
  pkgFinal = final.noetic.rosserial_chibios;
  src = srcs.rosserial.rosserial_chibios;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosserial_client
  ];

  colconTestDepends = [
  ];
}
