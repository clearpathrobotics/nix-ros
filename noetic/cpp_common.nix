{
  boost,
  catkin,
  console-bridge,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cpp_common";
  pkgFinal = final.noetic.cpp_common;
  src = srcs.roscpp_core.cpp_common;

  colconBuildDepends = [
    boost
    catkin
    console-bridge
  ];

  colconRunDepends = [
    boost
    console-bridge
  ];

  colconTestDepends = [
  ];
}
