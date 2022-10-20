{
  catkin,
  rc_hand_eye_calibration_client,
  rc_pick_client,
  rc_silhouettematch_client,
  rc_tagdetect_client,
  rc_visard_description,
  rc_visard_driver,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "rc_visard";
  pkgFinal = final.noetic.rc_visard;
  src = srcs.rc_visard.rc_visard;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    rc_hand_eye_calibration_client
    rc_pick_client
    rc_silhouettematch_client
    rc_tagdetect_client
    rc_visard_description
    rc_visard_driver
  ];

  colconTestDepends = [
  ];
}
