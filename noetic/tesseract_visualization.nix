{
  cmake,
  console-bridge,
  eigen,
  gtest,
  ros_industrial_cmake_boilerplate,
  tesseract_collision,
  tesseract_common,
  tesseract_environment,
  tesseract_scene_graph,
  tesseract_state_solver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_visualization";
  pkgFinal = final.noetic.tesseract_visualization;
  src = srcs.tesseract.tesseract_visualization;

  colconBuildDepends = [
    cmake
    console-bridge
    eigen
    ros_industrial_cmake_boilerplate
    tesseract_collision
    tesseract_common
    tesseract_environment
    tesseract_scene_graph
    tesseract_state_solver
  ];

  colconRunDepends = [
    console-bridge
    eigen
    tesseract_collision
    tesseract_common
    tesseract_environment
    tesseract_scene_graph
    tesseract_state_solver
  ];

  colconTestDepends = [
    gtest
  ];
}
