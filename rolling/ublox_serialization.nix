{
  ament_cmake,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_serialization";
  pkgFinal = final.rolling.ublox_serialization;
  src = srcs.ublox.ublox_serialization;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
