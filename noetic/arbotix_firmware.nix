{
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "arbotix_firmware";
  pkgFinal = final.noetic.arbotix_firmware;
  src = srcs.arbotix.arbotix_firmware;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
