{
  cmake,
  console-bridge,
  eigen,
  gtest,
  llvmPackages,
  ros_industrial_cmake_boilerplate,
  tesseract_collision,
  tesseract_common,
  tesseract_geometry,
  tesseract_kinematics,
  tesseract_scene_graph,
  tesseract_srdf,
  tesseract_state_solver,
  tesseract_support,
  tesseract_urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_environment";
  pkgFinal = final.noetic.tesseract_environment;
  src = srcs.tesseract.tesseract_environment;

  colconBuildDepends = [
    cmake
    console-bridge
    eigen
    ros_industrial_cmake_boilerplate
    tesseract_collision
    tesseract_common
    tesseract_geometry
    tesseract_kinematics
    tesseract_scene_graph
    tesseract_srdf
    tesseract_state_solver
    tesseract_urdf
  ];

  colconRunDepends = [
    console-bridge
    eigen
    tesseract_collision
    tesseract_common
    tesseract_geometry
    tesseract_kinematics
    tesseract_scene_graph
    tesseract_srdf
    tesseract_state_solver
    tesseract_urdf
  ];

  colconTestDepends = [
    gtest
    llvmPackages.openmp
    tesseract_support
  ];
}
