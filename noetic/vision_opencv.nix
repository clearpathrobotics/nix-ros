{
  catkin,
  cv_bridge,
  image_geometry,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vision_opencv";
  pkgFinal = final.noetic.vision_opencv;
  src = srcs.vision_opencv.vision_opencv;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    cv_bridge
    image_geometry
  ];

  colconTestDepends = [
  ];
}
