{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cr_calibration";
  pkgFinal = final.noetic.cr_calibration;
  src = srcs.jsk_recognition.cr_calibration;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
