{
  camera_calibration,
  catkin,
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
  pkgFinal = final.noetic.image_pipeline;
  src = srcs.image_pipeline.image_pipeline;

  colconBuildDepends = [
    catkin
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
  ];
}
