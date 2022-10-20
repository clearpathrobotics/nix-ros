{
  boost,
  catkin,
  console-bridge,
  gtest,
  mavlink,
  rosunit,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "libmavconn";
  pkgFinal = final.noetic.libmavconn;
  src = srcs.mavros.libmavconn;

  colconBuildDepends = [
    boost
    catkin
    console-bridge
    mavlink
  ];

  colconRunDepends = [
    boost
    console-bridge
    mavlink
  ];

  colconTestDepends = [
    gtest
    rosunit
  ];
}
