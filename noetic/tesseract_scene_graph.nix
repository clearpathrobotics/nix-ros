{
  boost,
  cmake,
  console-bridge,
  eigen,
  gtest,
  ros_industrial_cmake_boilerplate,
  tesseract_common,
  tesseract_geometry,
  tesseract_support,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_scene_graph";
  pkgFinal = final.noetic.tesseract_scene_graph;
  src = srcs.tesseract.tesseract_scene_graph;

  colconBuildDepends = [
    boost
    cmake
    console-bridge
    eigen
    ros_industrial_cmake_boilerplate
    tesseract_common
    tesseract_geometry
  ];

  colconRunDepends = [
    boost
    console-bridge
    eigen
    tesseract_common
    tesseract_geometry
  ];

  colconTestDepends = [
    gtest
    tesseract_support
  ];
}
