{
  catkin,
  cpp_common,
  rostime,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "roscpp_traits";
  pkgFinal = final.noetic.roscpp_traits;
  src = srcs.roscpp_core.roscpp_traits;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cpp_common
    rostime
  ];

  colconTestDepends = [
  ];
}
