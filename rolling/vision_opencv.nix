{
  ament_cmake,
  cv_bridge,
  image_geometry,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vision_opencv";
  pkgFinal = final.rolling.vision_opencv;
  src = srcs.vision_opencv.vision_opencv;

  colconBuildDepends = [
    ament_cmake
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
  ];

  colconTestDepends = [
  ];
}
