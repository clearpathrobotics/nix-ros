{
  boost,
  bullet,
  cmake,
  console-bridge,
  eigen,
  fcl,
  gbenchmark,
  gtest,
  libyamlcpp,
  llvmPackages,
  ros_industrial_cmake_boilerplate,
  tesseract_common,
  tesseract_geometry,
  tesseract_scene_graph,
  tesseract_support,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_collision";
  pkgFinal = final.noetic.tesseract_collision;
  src = srcs.tesseract.tesseract_collision;

  colconBuildDepends = [
    boost
    bullet
    cmake
    console-bridge
    eigen
    fcl
    libyamlcpp
    llvmPackages.openmp
    ros_industrial_cmake_boilerplate
    tesseract_common
    tesseract_geometry
    tesseract_support
  ];

  colconRunDepends = [
    boost
    bullet
    console-bridge
    eigen
    fcl
    libyamlcpp
    llvmPackages.openmp
    tesseract_common
    tesseract_geometry
    tesseract_support
  ];

  colconTestDepends = [
    gbenchmark
    gtest
    tesseract_scene_graph
  ];
}
