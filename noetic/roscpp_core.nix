{
  catkin,
  cpp_common,
  roscpp_serialization,
  roscpp_traits,
  rostime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roscpp_core";
  pkgFinal = final.noetic.roscpp_core;
  src = srcs.roscpp_core.roscpp_core;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cpp_common
    roscpp_serialization
    roscpp_traits
    rostime
  ];

  colconTestDepends = [
  ];
}
