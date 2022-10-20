{
  cmake,
  gtest,
  ros_industrial_cmake_boilerplate,
  tesseract_common,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_support";
  pkgFinal = final.noetic.tesseract_support;
  src = srcs.tesseract.tesseract_support;

  colconBuildDepends = [
    cmake
    ros_industrial_cmake_boilerplate
    tesseract_common
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    gtest
  ];
}
