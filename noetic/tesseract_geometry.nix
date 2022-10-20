{
  assimp,
  cmake,
  console-bridge,
  eigen,
  gtest,
  ros_industrial_cmake_boilerplate,
  tesseract_common,
  tesseract_support,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_geometry";
  pkgFinal = final.noetic.tesseract_geometry;
  src = srcs.tesseract.tesseract_geometry;

  colconBuildDepends = [
    assimp
    cmake
    console-bridge
    eigen
    ros_industrial_cmake_boilerplate
    tesseract_common
  ];

  colconRunDepends = [
    assimp
    console-bridge
    eigen
    tesseract_common
  ];

  colconTestDepends = [
    gtest
    tesseract_support
  ];
}
