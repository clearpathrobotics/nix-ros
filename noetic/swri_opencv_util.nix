{
  boost,
  catkin,
  cv_bridge,
  swri_math_util,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_opencv_util";
  pkgFinal = final.noetic.swri_opencv_util;
  src = srcs.marti_common.swri_opencv_util;

  colconBuildDepends = [
    boost
    catkin
    cv_bridge
    swri_math_util
  ];

  colconRunDepends = [
    boost
    cv_bridge
    swri_math_util
  ];

  colconTestDepends = [
  ];
}
