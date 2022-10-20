{
  ament_cmake,
  ament_cmake_lint_cmake,
  ament_cmake_xmllint,
  ament_lint_auto,
  camera_calibration,
  depth_image_proc,
  image_proc,
  image_publisher,
  image_rotate,
  image_view,
  stereo_image_proc,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_pipeline";
  pkgFinal = final.rolling.image_pipeline;
  src = srcs.image_pipeline.image_pipeline;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    camera_calibration
    depth_image_proc
    image_proc
    image_publisher
    image_rotate
    image_view
    stereo_image_proc
  ];

  colconTestDepends = [
    ament_cmake_lint_cmake
    ament_cmake_xmllint
    ament_lint_auto
  ];
}
