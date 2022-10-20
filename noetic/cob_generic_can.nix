{
  catkin,
  cob_utilities,
  libntcan,
  libpcan,
  socketcan_interface,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cob_generic_can";
  pkgFinal = final.noetic.cob_generic_can;
  src = srcs.cob_driver.cob_generic_can;

  colconBuildDepends = [
    catkin
    cob_utilities
    libntcan
    libpcan
    socketcan_interface
  ];

  colconRunDepends = [
    cob_utilities
    libntcan
    libpcan
    socketcan_interface
  ];

  colconTestDepends = [
  ];
}
