{
  catkin,
  cpp_common,
  roscpp_traits,
  rostime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roscpp_serialization";
  pkgFinal = final.noetic.roscpp_serialization;
  src = srcs.roscpp_core.roscpp_serialization;

  colconBuildDepends = [
    catkin
    cpp_common
    roscpp_traits
    rostime
  ];

  colconRunDepends = [
    cpp_common
    roscpp_traits
    rostime
  ];

  colconTestDepends = [
  ];
}
