{
  catkin,
  visp_auto_tracker,
  visp_bridge,
  visp_camera_calibration,
  visp_hand2eye_calibration,
  visp_tracker,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "vision_visp";
  pkgFinal = final.noetic.vision_visp;
  src = srcs.vision_visp.vision_visp;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    visp_auto_tracker
    visp_bridge
    visp_camera_calibration
    visp_hand2eye_calibration
    visp_tracker
  ];

  colconTestDepends = [
  ];
}
