{
  catkin,
  cob_generic_can,
  cob_utilities,
  roscpp,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_canopen_motor";
  pkgFinal = final.noetic.cob_canopen_motor;
  src = srcs.cob_driver.cob_canopen_motor;

  colconBuildDepends = [
    catkin
    cob_generic_can
    cob_utilities
    roscpp
  ];

  colconRunDepends = [
    cob_generic_can
    cob_utilities
    roscpp
  ];

  colconTestDepends = [
  ];
}
