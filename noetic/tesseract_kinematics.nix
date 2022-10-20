{
  cmake,
  console-bridge,
  eigen,
  gtest,
  liblapack,
  libyamlcpp,
  opw_kinematics,
  ros_industrial_cmake_boilerplate,
  tesseract_common,
  tesseract_scene_graph,
  tesseract_state_solver,
  tesseract_support,
  tesseract_urdf,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_kinematics";
  pkgFinal = final.noetic.tesseract_kinematics;
  src = srcs.tesseract.tesseract_kinematics;

  colconBuildDepends = [
    cmake
    console-bridge
    eigen
    libyamlcpp
    opw_kinematics
    ros_industrial_cmake_boilerplate
    tesseract_common
    tesseract_scene_graph
    tesseract_state_solver
  ];

  colconRunDepends = [
    console-bridge
    eigen
    libyamlcpp
    opw_kinematics
    tesseract_common
    tesseract_scene_graph
    tesseract_state_solver
  ];

  colconTestDepends = [
    gtest
    liblapack
    tesseract_support
    tesseract_urdf
  ];
}
