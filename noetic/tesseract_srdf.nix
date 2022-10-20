{
  cmake,
  console-bridge,
  eigen,
  gtest,
  libyamlcpp,
  ros_industrial_cmake_boilerplate,
  tesseract_common,
  tesseract_scene_graph,
  tesseract_support,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_srdf";
  pkgFinal = final.noetic.tesseract_srdf;
  src = srcs.tesseract.tesseract_srdf;

  colconBuildDepends = [
    cmake
    console-bridge
    eigen
    libyamlcpp
    ros_industrial_cmake_boilerplate
    tesseract_common
    tesseract_scene_graph
  ];

  colconRunDepends = [
    console-bridge
    eigen
    libyamlcpp
    tesseract_common
    tesseract_scene_graph
  ];

  colconTestDepends = [
    gtest
    tesseract_support
  ];
}
