{
  boost,
  clang,
  cmake,
  console-bridge,
  eigen,
  gtest,
  lcov,
  libyamlcpp,
  ros_industrial_cmake_boilerplate,
  tinyxml-2,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_common";
  pkgFinal = final.noetic.tesseract_common;
  src = srcs.tesseract.tesseract_common;

  colconBuildDepends = [
    boost
    cmake
    console-bridge
    eigen
    libyamlcpp
    ros_industrial_cmake_boilerplate
    tinyxml-2
  ];

  colconRunDepends = [
    boost
    console-bridge
    eigen
    libyamlcpp
    tinyxml-2
  ];

  colconTestDepends = [
    clang
    gtest
    lcov
  ];
}
