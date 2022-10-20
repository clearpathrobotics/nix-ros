{
  calibration_estimation,
  calibration_launch,
  calibration_msgs,
  catkin,
  image_cb_detector,
  interval_intersection,
  joint_states_settler,
  laser_cb_detector,
  monocam_settler,
  settlerlib,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "calibration";
  pkgFinal = final.noetic.calibration;
  src = srcs.calibration.calibration;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    calibration_estimation
    calibration_launch
    calibration_msgs
    image_cb_detector
    interval_intersection
    joint_states_settler
    laser_cb_detector
    monocam_settler
    settlerlib
  ];

  colconTestDepends = [
  ];
}
