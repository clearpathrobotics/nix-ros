{
  ament_cmake,
  boost,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_serial_util";
  pkgFinal = final.rolling.swri_serial_util;
  src = srcs.marti_common.swri_serial_util;

  colconBuildDepends = [
    ament_cmake
    boost
  ];

  colconRunDepends = [
    boost
  ];

  colconTestDepends = [
  ];
}
