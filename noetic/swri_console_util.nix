{
  catkin,
  roscpp,
  swri_math_util,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_console_util";
  pkgFinal = final.noetic.swri_console_util;
  src = srcs.marti_common.swri_console_util;

  colconBuildDepends = [
    catkin
    roscpp
    swri_math_util
  ];

  colconRunDepends = [
    roscpp
    swri_math_util
  ];

  colconTestDepends = [
  ];
}
