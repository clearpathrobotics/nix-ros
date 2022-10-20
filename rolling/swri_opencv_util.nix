{
  ament_cmake,
  boost,
  cv_bridge,
  swri_math_util,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "swri_opencv_util";
  pkgFinal = final.rolling.swri_opencv_util;
  src = srcs.marti_common.swri_opencv_util;

  colconBuildDepends = [
    ament_cmake
    boost
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
