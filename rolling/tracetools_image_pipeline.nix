{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  pkg-config,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "tracetools_image_pipeline";
  pkgFinal = final.rolling.tracetools_image_pipeline;
  src = srcs.image_pipeline.tracetools_image_pipeline;

  colconBuildDepends = [
    ament_cmake_ros
    pkg-config
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
