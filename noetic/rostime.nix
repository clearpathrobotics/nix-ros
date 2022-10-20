{
  boost,
  catkin,
  cpp_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rostime";
  pkgFinal = final.noetic.rostime;
  src = srcs.roscpp_core.rostime;

  colconBuildDepends = [
    boost
    catkin
    cpp_common
  ];

  colconRunDepends = [
    boost
    cpp_common
  ];

  colconTestDepends = [
  ];
}
