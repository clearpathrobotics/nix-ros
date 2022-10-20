{
  ament_cmake,
  ament_lint_auto,
  ament_lint_common,
  camera_calibration_parsers,
  camera_info_manager,
  image_transport,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_common";
  pkgFinal = final.rolling.image_common;
  src = srcs.image_common.image_common;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    camera_calibration_parsers
    camera_info_manager
    image_transport
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
