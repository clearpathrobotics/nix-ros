{
  calibration_launch,
  catkin,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "calibration_setup_helper";
  pkgFinal = final.noetic.calibration_setup_helper;
  src = srcs.calibration.calibration_setup_helper;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    calibration_launch
  ];

  colconTestDepends = [
  ];
}
