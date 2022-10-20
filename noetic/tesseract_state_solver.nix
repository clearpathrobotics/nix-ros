{
  cmake,
  console-bridge,
  eigen,
  gtest,
  ros_industrial_cmake_boilerplate,
  tesseract_common,
  tesseract_scene_graph,
  tesseract_support,
  tesseract_urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_state_solver";
  pkgFinal = final.noetic.tesseract_state_solver;
  src = srcs.tesseract.tesseract_state_solver;

  colconBuildDepends = [
    cmake
    console-bridge
    eigen
    ros_industrial_cmake_boilerplate
    tesseract_common
    tesseract_scene_graph
  ];

  colconRunDepends = [
    console-bridge
    eigen
    tesseract_common
    tesseract_scene_graph
  ];

  colconTestDepends = [
    gtest
    tesseract_support
    tesseract_urdf
  ];
}
