{
  catkin,
  roscpp,
  roscpp_serialization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ublox_serialization";
  pkgFinal = final.noetic.ublox_serialization;
  src = srcs.ublox.ublox_serialization;

  colconBuildDepends = [
    catkin
    roscpp
    roscpp_serialization
  ];

  colconRunDepends = [
    roscpp
    roscpp_serialization
  ];

  colconTestDepends = [
  ];
}
