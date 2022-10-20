{
  cmake,
  console-bridge,
  eigen,
  gtest,
  pcl,
  ros_industrial_cmake_boilerplate,
  tesseract_collision,
  tesseract_common,
  tesseract_geometry,
  tesseract_scene_graph,
  tesseract_support,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tesseract_urdf";
  pkgFinal = final.noetic.tesseract_urdf;
  src = srcs.tesseract.tesseract_urdf;

  colconBuildDepends = [
    cmake
    console-bridge
    eigen
    pcl
    ros_industrial_cmake_boilerplate
    tesseract_collision
    tesseract_common
    tesseract_geometry
    tesseract_scene_graph
  ];

  colconRunDepends = [
    console-bridge
    eigen
    pcl
    tesseract_collision
    tesseract_common
    tesseract_geometry
    tesseract_scene_graph
  ];

  colconTestDepends = [
    gtest
    tesseract_support
  ];
}
