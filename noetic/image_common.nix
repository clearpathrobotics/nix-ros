{
  camera_calibration_parsers,
  camera_info_manager,
  catkin,
  image_transport,
  polled_camera,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "image_common";
  pkgFinal = final.noetic.image_common;
  src = srcs.image_common.image_common;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    camera_calibration_parsers
    camera_info_manager
    image_transport
    polled_camera
  ];

  colconTestDepends = [
  ];
}
