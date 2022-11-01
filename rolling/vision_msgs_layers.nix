{
  ament_cmake_ros,
  ament_lint_auto,
  ament_lint_common,
  rqt_image_overlay_layer,
  vision_msgs,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vision_msgs_layers";
  pkgFinal = final.rolling.vision_msgs_layers;
  src = srcs.vision_msgs_layers.vision_msgs_layers;

  colconBuildDepends = [
    ament_cmake_ros
    rqt_image_overlay_layer
    vision_msgs
  ];

  colconRunDepends = [
    rqt_image_overlay_layer
    vision_msgs
  ];

  colconTestDepends = [
    ament_lint_auto
    ament_lint_common
  ];
}
