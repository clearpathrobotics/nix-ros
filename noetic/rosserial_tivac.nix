{
  catkin,
  rosserial_client,
  rosserial_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rosserial_tivac";
  pkgFinal = final.noetic.rosserial_tivac;
  src = srcs.rosserial.rosserial_tivac;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rosserial_client
    rosserial_msgs
  ];

  colconTestDepends = [
  ];
}
