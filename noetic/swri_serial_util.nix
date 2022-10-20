{
  boost,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_serial_util";
  pkgFinal = final.noetic.swri_serial_util;
  src = srcs.marti_common.swri_serial_util;

  colconBuildDepends = [
    boost
    catkin
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
  ];
}
