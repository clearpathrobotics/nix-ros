{
  catkin,
  cv_bridge,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "opencv_tests";
  pkgFinal = final.noetic.opencv_tests;
  src = srcs.vision_opencv.opencv_tests;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cv_bridge
  ];

  colconTestDepends = [
  ];
}
