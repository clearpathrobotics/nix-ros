{

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "cr_capture";
  pkgFinal = final.noetic.cr_capture;
  src = srcs.jsk_recognition.cr_capture;

  colconBuildDepends = [
  ];

  colconRunDepends = [
  ];

  colconTestDepends = [
  ];
}
